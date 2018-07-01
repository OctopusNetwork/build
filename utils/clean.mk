
clean: incclean binclean libclean

incclean:
	$(RM) -rf $(incdir)/$(MODULE)

binclean::

libclean::
	$(RM) -rf $(OBJS_DIR) $(libdir)/$(TARGET_ARCHIVE)

.PHONY: clean
