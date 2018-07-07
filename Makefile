rootdir ?= $(shell pwd)/..
project ?= ubuntu-base

include $(rootdir)/build/project/$(project).mk
include $(rootdir)/build/common/common.mk

all: $(compilemodules) $(installmodules)
clean: $(cleanmodules)
sync: preparedir $(syncmodules)
info: $(infomodules)
test: $(testmodules)
