ROOT = ../..
include $(ROOT)/Makefile.base.mk
BUILD_DIR = $(ROOT)/build_test/libs/temporal
SHARED_LIB = $(BUILD_DIR)/libtemporal.so

CPP_FILES += debug.cc
CPP_FILES += bbt_time.cc
CPP_FILES += beats.cc
CPP_FILES += enums.cc
CPP_FILES += range.cc
CPP_FILES += superclock.cc
CPP_FILES += tempo.cc
CPP_FILES += time.cc
CPP_FILES += timeline.cc

#CUR_DEP_LIBS += 

OBJS = $(CPP_FILES:%=$(BUILD_DIR)/%.o)

TARGETS = $(SHARED_LIB)

all: $(TARGETS)

$(BUILD_DIR)/%.cc.o: %.cc
	-@mkdir -p "$(shell dirname $(BUILD_DIR)/$<)"
	@echo "\nCompiling $<"
	$(CC) $< $(CFLAGS) -fPIC -c -o $@

$(SHARED_LIB): $(OBJS)
	@echo "Creating $@"
	$(CC) $(OBJS)  -shared -Wl,-soname -o $(SHARED_LIB) $(CUR_DEP_LIBS)

clean_shared:
	-rm -f $(SHARED_LIB) $

clean: clean_shared
	-rm -f $(OBJS)


