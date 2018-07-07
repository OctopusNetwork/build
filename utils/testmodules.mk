testmodules = $(submodules:%=test-%)

$(testmodules):
	@if test -d $(sourcedir)/$(@:test-%=%)/test/ut; then						\
		cd $(sourcedir)/$(@:test-%=%)/test/ut; make all;						\
	fi
	@if test -d $(sourcedir)/$(@:test-%=%)/test/mt; then						\
		cd $(sourcedir)/$(@:test-%=%)/test/mt; make all;						\
	fi
