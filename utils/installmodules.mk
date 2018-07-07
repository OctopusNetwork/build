installmodules = $(submodules:%=install-%)

$(installmodules):
	@if test -d $(sourcedir)/$(@:install-%=%); then						\
		cd $(sourcedir)/$(@:install-%=%); make install;					\
	fi
