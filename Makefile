rootdir ?= $(shell pwd)/..
project ?= ubuntu-base

include $(rootdir)/build/common/common.mk

all:
clean:
sync: preparedir $(syncmodules)
info:
