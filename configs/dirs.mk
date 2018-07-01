sourcedir ?= $(rootdir)/source
export sourcedir
outputdir ?= $(rootdir)/outputs/$(project)/$(host_os)/$(host_arch)/$(host_mach)
export outputdir
intermediatedir ?= $(outputdir)/.intermediate
export intermediatedir
libdir = $(outputdir)/lib
export libdir
incdir = $(outputdir)/include
export incdir
bindir = $(outputdir)/bin
export bindir

preparedir:
	@mkdir -p $(sourcedir)
	@mkdir -p $(outputdir)
	@mkdir -p $(intermediatedir)
	@mkdir -p $(libdir)
	@mkdir -p $(incdir)
	@mkdir -p $(bindir)
