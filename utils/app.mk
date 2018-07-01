####
##  Application targets
####
buildapps = $(apps:%=$(bindir)/%)
cleanapps = $(apps:%=clean-$(bindir)/%)

####
## Deploy package targets
####
CFLAGS += $(foreach header, $(DEP_HEADERS), -I$(header)) -Werror

all: preparedir $(buildapps)
$(buildapps): $(libdir)/$(foreach archive, $($(@:$(bindir)/%=%)_ARCHIVES), lib$(archive).a)
	@echo Linking $@
	@$(CC) $(CFLAGS) $($(@:$(bindir)/%=%)_SRCS) -o $@                                        \
        -Wl,--start-group                                                                   \
        -L $(libdir) $(foreach archive, $($(@:$(bindir)/%=%)_ARCHIVES), -l$(archive))       \
        $($(@:$(bindir)/%=%)_LDLIBS)                                                        \
        -Wl,--end-group $($(@:$(bindir)/%=%)_LDEXTRAS)

clean: $(cleanapps)
$(cleanapps):
	@echo Cleaning $(@:clean-%=%)
	@$(RM) -rf $(@:clean-%=%)
