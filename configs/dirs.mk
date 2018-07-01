sourcedir ?= $(rootdir)/source
export sourcedir
outputdir ?= $(rootdir)/outputs/$(project)/$(host_os)/$(host_arch)/$(host_mach)
export outputdir
intermediatedir ?= $(outputdir)/.intermediate
export intermediatedir

preparedir:
	@mkdir -p $(sourcedir)
	@mkdir -p $(outputdir)
	@mkdir -p $(intermediatedir)
