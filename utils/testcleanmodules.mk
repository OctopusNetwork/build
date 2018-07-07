testcleanmodules = $(submodules:%=testclean-%)

$(testcleanmodules):
	@if test -d $(sourcedir)/$(@:testclean-%=%)/test/ut; then						\
		cd $(sourcedir)/$(@:testclean-%=%)/test/ut; make clean;							\
	fi
	@if test -d $(sourcedir)/$(@:testclean-%=%)/test/mt; then						\
		cd $(sourcedir)/$(@:testclean-%=%)/test/mt; make clean;							\
	fi
