cleanmodules = $(submodules:%=clean-%)

$(cleanmodules):
	@if test -d $(sourcedir)/$(@:clean-%=%); then						\
		cd $(sourcedir)/$(@:clean-%=%); make clean;						\
	fi
