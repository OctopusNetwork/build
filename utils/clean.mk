
clean: incclean binclean libclean

incclean:
	$(RM) -rf $(incdir)/$(MODULENAME)

binclean::

libclean::
	$(RM) -rf $(OBJS_DIR) $(libdir)/$(TARGET_ARCHIVE)

.PHONY: clean
