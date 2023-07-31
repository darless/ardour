ROOT = ../..
LIB_DIR = evoral
LIB_FILE = libevoral.so
include $(ROOT)/Makefile.base.mk
BUILD_DIR = $(BASE_BUILD)/$(LIB_DIR)
SHARED_LIB = $(BUILD_DIR)/$(LIB_FILE)

SRC_FILES += Control.cc
SRC_FILES += ControlList.cc
SRC_FILES += ControlSet.cc
SRC_FILES += Curve.cc
SRC_FILES += Event.cc
SRC_FILES += Note.cc
SRC_FILES += SMF.cc
SRC_FILES += Sequence.cc
SRC_FILES += debug.cc

#CUR_DEP_LIBS += 

OBJS = $(SRC_FILES:%=$(BUILD_DIR)/%.o)

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


