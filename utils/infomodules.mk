infomodules = $(submodules:%=info-%)

$(infomodules):
	@if test -d $(sourcedir)/$(@:info-%=%); then						\
		echo $(sourcedir)/$(@:info-%=%);								\
		cd $(sourcedir)/$(@:info-%=%); git status;						\
	fi
