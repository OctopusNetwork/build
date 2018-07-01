infomodules = $(submodules:%=info-%)

$(infomodules):
	@if test -d $(sourcedir)/$(@:info-%=%); then						\
		cd $(sourcedir)/$(@:info-%=%); git status;						\
	fi
