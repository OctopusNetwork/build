syncmodules = $(submodules:%=sync-%)

$(syncmodules):
	@if ! test -d $(sourcedir)/$(@:sync-%=%); then						\
		cd $(sourcedir); git clone $(repoprefix)/$(@:sync-%=%).git;		\
	else																\
		cd $(sourcedir)/$(@:sync-%=%); git pull;						\
	fi
	@cd $(sourcedir)/$(@:sync-%=%); git checkout dev
