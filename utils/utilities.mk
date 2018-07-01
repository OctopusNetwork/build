
get_src_from_dir = $(wildcard $1/*.cpp) $(wildcard $1/*.c) $(wildcard $1/*.m)
get_dirs_from_dirspec = $(wildcard $1)
get_src_from_dir_list = $(foreach dir, $1, $(call get_src_from_dir,$(dir)))
src_to_o = $(subst .c,.o, $(subst .cpp,.o, $(subst .m,.o,$1)))
src_to_obj = $(subst .c,.obj, $(subst .cpp,.obj, $(subst .m,.obj,$1)))
src_to_d = $(subst .c,.d, $(subst .cpp,.d, $(subst .m,.d,$1)))
change_o_file_location = $(patsubst %.o,$(OBJS_DIR)/1/2/3/4/5/%.o, $1)
change_d_file_location = $(patsubst %.d,$(OBJS_DIR)/1/2/3/4/5/%.d, $1)
src_to = $(subst .c,$1, $(subst .cpp,$1, $(subst .m,$1,$2)))

