inst-incdirs = $(INST_HEADER_DIRS:%=inst-%)
inst-extradirs = $(INST_EXTRA_DIRS:%=inst-%)

install: incinstall bininstall libinstall extrainstall

incinstall: $(inst-incdirs)
$(inst-incdirs):
	$(MKDIR) -p $(incdir)/$(MODULENAME)
	$(CP) -rf $(@:inst-%=%)/* $(incdir)/$(MODULENAME)

bininstall::
libinstall::

extrainstall: $(inst-extradirs)

$(inst-extradirs):
