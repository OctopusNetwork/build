include $(rootdir)/build/utils/base-object.mk

$(libdir)/$(TARGET_ARCHIVE): $(ALL_OBJ)
	@echo Archiving $@ - $(ALL_OBJ)
	@mkdir -p $(dir $@)
	$(AR) $(ARFLAGS) $@ $^

include $(rootdir)/build/utils/install.mk
include $(rootdir)/build/utils/clean.mk
