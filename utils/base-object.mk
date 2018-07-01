SRC_FILES = $(COMMON_SRC_FILES)
INCLUDE_DIRS = $(COMMON_INCLUDE_DIRS)
INST_HEADER_DIRS = $(COMMON_INST_HEADER_DIRS)
INST_EXTRA_DIRS = $(COMMON_INST_EXTRA_DIRS)
OBJS_DIR = $(intermediatedir)/$(MODULENAME)

SRC += $(call get_src_from_dir_list, $(SRC_DIRS)) $(SRC_FILES)
ALL_SRC = $(SRC) $(TEST_SRC)

OBJ = $(call change_o_file_location, $(call src_to_o,$(SRC)))
ALL_OBJ = $(OBJ) $(TEST_OBJ)


ALL_DEP = $(call change_d_file_location, $(call src_to_d,$(ALL_SRC)))

INCLUDES_DIRS_EXPANDED = $(call get_dirs_from_dirspec, $(INCLUDE_DIRS))
INCLUDES += $(foreach dir, $(INCLUDES_DIRS_EXPANDED), -I$(dir)) -I$(incdir)
INCLUDES += $(foreach dep, $(MODULEDEPS), -I$(incdir)/$(dep))
INCLUDES += -Werror $(CFLAGS) $(MODULE_CFLAGS)

all : preparedir $(libdir)/$(TARGET_ARCHIVE)

$(OBJS_DIR)/1/2/3/4/5/%.o: %.cpp
	@echo compiling $(notdir $<)
	@mkdir -p $(dir $@)
	@$(CXXCOMPILE) $(INCLUDES) -o -fPIC $(@) $<

$(OBJS_DIR)/1/2/3/4/5/%.o: %.c
	@echo compiling $(notdir $<)
	@mkdir -p $(dir $@)
	@$(CCOMPILE) $(INCLUDES) -fPIC -o $(@) $<

$(OBJS_DIR)/1/2/3/4/5/%.o: %.m
	@echo compiling $(notdir $<)
	@mkdir -p $(dir $@)
	@$(CCOMPILE) $(INCLUDES) -o $(@) $<

ifneq "$(MAKECMDGOALS)" "clean"
-include $(ALL_DEP)
endif
