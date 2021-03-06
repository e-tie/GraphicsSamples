# Makefile generated by XPJ for linux-arm
-include Makefile.custom
ProjectName = Half
Half_cppfiles   += ./../../src/Half/half.cpp

Half_cpp_debug_dep    = $(addprefix $(DEPSDIR)/Half/debug/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.P, $(Half_cppfiles)))))
Half_cc_debug_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.debug.P, $(Half_ccfiles)))))
Half_c_debug_dep      = $(addprefix $(DEPSDIR)/Half/debug/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.P, $(Half_cfiles)))))
Half_debug_dep      = $(Half_cpp_debug_dep) $(Half_cc_debug_dep) $(Half_c_debug_dep)
-include $(Half_debug_dep)
Half_cpp_release_dep    = $(addprefix $(DEPSDIR)/Half/release/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.P, $(Half_cppfiles)))))
Half_cc_release_dep    = $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.release.P, $(Half_ccfiles)))))
Half_c_release_dep      = $(addprefix $(DEPSDIR)/Half/release/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.P, $(Half_cfiles)))))
Half_release_dep      = $(Half_cpp_release_dep) $(Half_cc_release_dep) $(Half_c_release_dep)
-include $(Half_release_dep)
Half_debug_hpaths    := 
Half_debug_hpaths    += ./../../src/Half
Half_debug_hpaths    += ./../../include
Half_debug_hpaths    += ./../../../extensions/include
Half_debug_hpaths    += ./../../../extensions/include/NsFoundation
Half_debug_hpaths    += ./../../../extensions/include/NvFoundation
Half_debug_hpaths    += ./../../../extensions/externals/include
Half_debug_hpaths    += ./../../../extensions/externals/include/GLFW
Half_debug_lpaths    := 
Half_debug_defines   := $(Half_custom_defines)
Half_debug_defines   += LINUX=1
Half_debug_defines   += NV_LINUX
Half_debug_defines   += GLEW_NO_GLU=1
Half_debug_defines   += _DEBUG
Half_debug_libraries := 
Half_debug_common_cflags	:= $(Half_custom_cflags)
Half_debug_common_cflags    += -MMD
Half_debug_common_cflags    += $(addprefix -D, $(Half_debug_defines))
Half_debug_common_cflags    += $(addprefix -I, $(Half_debug_hpaths))
Half_debug_common_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -pthread
Half_debug_common_cflags  += -funwind-tables -O0 -g -ggdb -fno-omit-frame-pointer
Half_debug_cflags	:= $(Half_debug_common_cflags)
Half_debug_cppflags	:= $(Half_debug_common_cflags)
Half_debug_cppflags  += -Wno-reorder -std=c++11
Half_debug_cppflags  += -Wno-reorder
Half_debug_lflags    := $(Half_custom_lflags)
Half_debug_lflags    += $(addprefix -L, $(Half_debug_lpaths))
Half_debug_lflags    += -Wl,--start-group $(addprefix -l, $(Half_debug_libraries)) -Wl,--end-group
Half_debug_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs -pthread
Half_debug_objsdir  = $(OBJS_DIR)/Half_debug
Half_debug_cpp_o    = $(addprefix $(Half_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(Half_cppfiles)))))
Half_debug_cc_o    = $(addprefix $(Half_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(Half_ccfiles)))))
Half_debug_c_o      = $(addprefix $(Half_debug_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(Half_cfiles)))))
Half_debug_obj      =  $(Half_debug_cpp_o) $(Half_debug_cc_o) $(Half_debug_c_o) 
Half_debug_bin      := ./../../lib/linux-arm/libHalfD.a

clean_Half_debug: 
	@$(ECHO) clean Half debug
	@$(RMDIR) $(Half_debug_objsdir)
	@$(RMDIR) $(Half_debug_bin)
	@$(RMDIR) $(DEPSDIR)/Half/debug

build_Half_debug: postbuild_Half_debug
postbuild_Half_debug: mainbuild_Half_debug
mainbuild_Half_debug: prebuild_Half_debug $(Half_debug_bin)
prebuild_Half_debug:

$(Half_debug_bin): $(Half_debug_obj) 
	mkdir -p `dirname ./../../lib/linux-arm/libHalfD.a`
	@$(AR) rcs $(Half_debug_bin) $(Half_debug_obj)
	$(ECHO) building $@ complete!

Half_debug_DEPDIR = $(dir $(@))/$(*F)
$(Half_debug_cpp_o): $(Half_debug_objsdir)/%.o:
	$(ECHO) Half: compiling debug $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Half_debug_objsdir),, $@))), $(Half_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Half_debug_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Half_debug_objsdir),, $@))), $(Half_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Half/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Half_debug_objsdir),, $@))), $(Half_cppfiles))))))
	cp $(Half_debug_DEPDIR).d $(addprefix $(DEPSDIR)/Half/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Half_debug_objsdir),, $@))), $(Half_cppfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Half_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/Half/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Half_debug_objsdir),, $@))), $(Half_cppfiles))))).P; \
	  rm -f $(Half_debug_DEPDIR).d

$(Half_debug_cc_o): $(Half_debug_objsdir)/%.o:
	$(ECHO) Half: compiling debug $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Half_debug_objsdir),, $@))), $(Half_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Half_debug_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Half_debug_objsdir),, $@))), $(Half_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Half_debug_objsdir),, $@))), $(Half_ccfiles))))))
	cp $(Half_debug_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Half_debug_objsdir),, $@))), $(Half_ccfiles))))).debug.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Half_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Half_debug_objsdir),, $@))), $(Half_ccfiles))))).debug.P; \
	  rm -f $(Half_debug_DEPDIR).d

$(Half_debug_c_o): $(Half_debug_objsdir)/%.o:
	$(ECHO) Half: compiling debug $(filter %$(strip $(subst .c.o,.c, $(subst $(Half_debug_objsdir),, $@))), $(Half_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(Half_debug_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(Half_debug_objsdir),, $@))), $(Half_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Half/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Half_debug_objsdir),, $@))), $(Half_cfiles))))))
	cp $(Half_debug_DEPDIR).d $(addprefix $(DEPSDIR)/Half/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Half_debug_objsdir),, $@))), $(Half_cfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Half_debug_DEPDIR).d >> $(addprefix $(DEPSDIR)/Half/debug/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Half_debug_objsdir),, $@))), $(Half_cfiles))))).P; \
	  rm -f $(Half_debug_DEPDIR).d

Half_release_hpaths    := 
Half_release_hpaths    += ./../../src/Half
Half_release_hpaths    += ./../../include
Half_release_hpaths    += ./../../../extensions/include
Half_release_hpaths    += ./../../../extensions/include/NsFoundation
Half_release_hpaths    += ./../../../extensions/include/NvFoundation
Half_release_hpaths    += ./../../../extensions/externals/include
Half_release_hpaths    += ./../../../extensions/externals/include/GLFW
Half_release_lpaths    := 
Half_release_defines   := $(Half_custom_defines)
Half_release_defines   += LINUX=1
Half_release_defines   += NV_LINUX
Half_release_defines   += GLEW_NO_GLU=1
Half_release_defines   += NDEBUG
Half_release_libraries := 
Half_release_common_cflags	:= $(Half_custom_cflags)
Half_release_common_cflags    += -MMD
Half_release_common_cflags    += $(addprefix -D, $(Half_release_defines))
Half_release_common_cflags    += $(addprefix -I, $(Half_release_hpaths))
Half_release_common_cflags  += -funwind-tables -Wall -Wextra -Wno-unused-parameter -Wno-ignored-qualifiers -Wno-unused-but-set-variable -Wno-switch -Wno-unused-variable -Wno-unused-function -pthread
Half_release_cflags	:= $(Half_release_common_cflags)
Half_release_cppflags	:= $(Half_release_common_cflags)
Half_release_cppflags  += -Wno-reorder -std=c++11
Half_release_cppflags  += -Wno-reorder
Half_release_lflags    := $(Half_custom_lflags)
Half_release_lflags    += $(addprefix -L, $(Half_release_lpaths))
Half_release_lflags    += -Wl,--start-group $(addprefix -l, $(Half_release_libraries)) -Wl,--end-group
Half_release_lflags  += -Wl,--unresolved-symbols=ignore-in-shared-libs -pthread
Half_release_objsdir  = $(OBJS_DIR)/Half_release
Half_release_cpp_o    = $(addprefix $(Half_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cpp, %.cpp.o, $(Half_cppfiles)))))
Half_release_cc_o    = $(addprefix $(Half_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.cc, %.cc.o, $(Half_ccfiles)))))
Half_release_c_o      = $(addprefix $(Half_release_objsdir)/, $(subst ./, , $(subst ../, , $(patsubst %.c, %.c.o, $(Half_cfiles)))))
Half_release_obj      =  $(Half_release_cpp_o) $(Half_release_cc_o) $(Half_release_c_o) 
Half_release_bin      := ./../../lib/linux-arm/libHalf.a

clean_Half_release: 
	@$(ECHO) clean Half release
	@$(RMDIR) $(Half_release_objsdir)
	@$(RMDIR) $(Half_release_bin)
	@$(RMDIR) $(DEPSDIR)/Half/release

build_Half_release: postbuild_Half_release
postbuild_Half_release: mainbuild_Half_release
mainbuild_Half_release: prebuild_Half_release $(Half_release_bin)
prebuild_Half_release:

$(Half_release_bin): $(Half_release_obj) 
	mkdir -p `dirname ./../../lib/linux-arm/libHalf.a`
	@$(AR) rcs $(Half_release_bin) $(Half_release_obj)
	$(ECHO) building $@ complete!

Half_release_DEPDIR = $(dir $(@))/$(*F)
$(Half_release_cpp_o): $(Half_release_objsdir)/%.o:
	$(ECHO) Half: compiling release $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Half_release_objsdir),, $@))), $(Half_cppfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Half_release_cppflags) -c $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Half_release_objsdir),, $@))), $(Half_cppfiles)) -o $@
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Half/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Half_release_objsdir),, $@))), $(Half_cppfiles))))))
	cp $(Half_release_DEPDIR).d $(addprefix $(DEPSDIR)/Half/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Half_release_objsdir),, $@))), $(Half_cppfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Half_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/Half/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cpp.o,.cpp, $(subst $(Half_release_objsdir),, $@))), $(Half_cppfiles))))).P; \
	  rm -f $(Half_release_DEPDIR).d

$(Half_release_cc_o): $(Half_release_objsdir)/%.o:
	$(ECHO) Half: compiling release $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Half_release_objsdir),, $@))), $(Half_ccfiles))...
	mkdir -p $(dir $(@))
	$(CXX) $(Half_release_cppflags) -c $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Half_release_objsdir),, $@))), $(Half_ccfiles)) -o $@
	mkdir -p $(dir $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Half_release_objsdir),, $@))), $(Half_ccfiles))))))
	cp $(Half_release_DEPDIR).d $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Half_release_objsdir),, $@))), $(Half_ccfiles))))).release.P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Half_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .cc.o,.cc, $(subst $(Half_release_objsdir),, $@))), $(Half_ccfiles))))).release.P; \
	  rm -f $(Half_release_DEPDIR).d

$(Half_release_c_o): $(Half_release_objsdir)/%.o:
	$(ECHO) Half: compiling release $(filter %$(strip $(subst .c.o,.c, $(subst $(Half_release_objsdir),, $@))), $(Half_cfiles))...
	mkdir -p $(dir $(@))
	$(CC) $(Half_release_cflags) -c $(filter %$(strip $(subst .c.o,.c, $(subst $(Half_release_objsdir),, $@))), $(Half_cfiles)) -o $@ 
	@mkdir -p $(dir $(addprefix $(DEPSDIR)/Half/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Half_release_objsdir),, $@))), $(Half_cfiles))))))
	cp $(Half_release_DEPDIR).d $(addprefix $(DEPSDIR)/Half/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Half_release_objsdir),, $@))), $(Half_cfiles))))).P; \
	  sed -e 's/#.*//' -e 's/^[^:]*: *//' -e 's/ *\\$$//' \
		-e '/^$$/ d' -e 's/$$/ :/' < $(Half_release_DEPDIR).d >> $(addprefix $(DEPSDIR)/Half/release/, $(subst ./, , $(subst ../, , $(filter %$(strip $(subst .c.o,.c, $(subst $(Half_release_objsdir),, $@))), $(Half_cfiles))))).P; \
	  rm -f $(Half_release_DEPDIR).d

clean_Half:  clean_Half_debug clean_Half_release
	rm -rf $(DEPSDIR)

export VERBOSE
ifndef VERBOSE
.SILENT:
endif
