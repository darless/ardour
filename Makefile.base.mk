# ROOT Must be set prior to include
ifeq ($(ROOT),)
$(error ROOT must be set)
endif

BASE_BUILD = $(ROOT)/build_test

WARN_FLAGS += -Wno-deprecated-declarations

# EM++ warning about -shared library
# NNN: I may need to change this once we get closer to compiling
WARN_FLAGS += -Wno-emcc -Wno-linkflags

CC=g++ $(WARN_FLAGS)

# BASE_PKG_FLAGS - START
BASE_PKG_FLAGS += -DVERSIONSTRING=\"7.5\"
BASE_PKG_FLAGS += -DPROGRAM_VERSION=\"7.5\"
BASE_PKG_FLAGS += -DPROGRAM_NAME=\"Ardour\"
BASE_PKG_FLAGS += -DLOCALEDIR=\"\"
# In gtk2_ardour wscript PACKAGE is defined to I18N_PACKAGE
BASE_PKG_FLAGS += -DPACKAGE=\"gtk2_ardour7\" 
# BUG: Need this otherwise boost complains about declaring bind placeholders
BASE_PKG_FLAGS += -DBOOST_BIND_GLOBAL_PLACEHOLDERS
# Need to specify that we are using rubberband, otherwise we run into code issues
# Specifically in editor_drag.cc
BASE_PKG_FLAGS += -DUSE_RUBBERBAND
# BASE_PKG_FLAGS - END

COMMON_FLAGS += $(shell pkg-config --cflags glibmm-2.4 gtkmm-2.4 libxml-2.0 lilv-0 x11)
BASE_CFLAGS = $(COMMON_FLAGS) $(BASE_PKG_FLAGS)

# This is only applicable for non-wasm, as with wasm, the compiling for a 32-bit needs to happen elsewhere
#SYS_LIBS += -lpthread
#SYS_LIBS += $(shell pkg-config --libs glibmm-2.4 gtkmm-2.4 libxml-2.0 lilv-0 x11)

EM_GLIB_INC += -I/app/emcc-build/glib/include
EM_GLIB_LIB_PATH += -L/app/emcc-build/glib/lib


BASE_LIB_INC += -I$(ROOT)/libs
BASE_LIB_INC += -I$(ROOT)/libs/ardour
BASE_LIB_INC += -I$(ROOT)/libs/pbd
BASE_LIB_INC += -I$(ROOT)/libs/gtkmm2ext
BASE_LIB_INC += -I$(ROOT)/libs/temporal
BASE_LIB_INC += -I$(ROOT)/libs/widgets
BASE_LIB_INC += -I$(ROOT)/libs/widgets/widgets
BASE_LIB_INC += -I$(ROOT)/libs/canvas
BASE_LIB_INC += -I$(ROOT)/libs/evoral
BASE_LIB_INC += -I$(ROOT)/libs/lua
BASE_LIB_INC += -I$(ROOT)/libs/midi++2
BASE_LIB_INC += -I$(ROOT)/libs/libltc/ltc
BASE_LIB_INC += -I$(ROOT)/libs/waveview
BASE_LIB_INC += -I$(ROOT)/libs/zita-resampler
BASE_LIB_INC += -I$(ROOT)/libs/ctrl-interface/control_protocol
BASE_LIB_INC += -I$(ROOT)/libs/ptformat
BASE_LIB_INC += -I$(ROOT)/libs/audiographer
BASE_LIB_INC += -I$(ROOT)/libs/vst3

CFLAGS = $(BASE_CFLAGS) $(BASE_LIB_INC)

# For WASM need to include this
CC=/usr/local/emsdk/upstream/emscripten/em++ $(WARN_FLAGS) -s USE_BOOST_HEADERS=1 -fno-stack-protector
CFLAGS += -DCMAKE_TOOLCHAIN_FILE=/usr/local/emsdk/upstream/emscripten/cmake/Modules/Platform/Emscripten.cmake -DCMAKE_CROSSCOMPILING_EMULATOR=/usr/local/emsdk/node/16.20.0_64bit/bin/node

# boost using __unary_function - error
CFLAGS += -std=gnu++11

# Other notes: libxml2 needs to be compiled manually