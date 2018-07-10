compilemodules = $(submodules:%=compile-%)

$(compilemodules):
	@if test -d $(sourcedir)/$(@:compile-%=%); then						\
		cd $(sourcedir)/$(@:compile-%=%); make all;						\
		cd $(sourcedir)/$(@:compile-%=%); make install;					\
	fi
