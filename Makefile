# Time-stamp: <2021-12-06 20:11:38 daniel>


##
# General build rules and tools
include mk/tools.mk
include mk/rules.mk


##
# Source and modules
name := "main makefile"
module := main one two three
src =
deps =


##
# Add all modules for directories
include $(addsuffix /module.mk,$(module))


##
# Targets
target := example
objs = $(addsuffix .o,$(src))
deps = $(addsuffix .d,$(src))
inc = $(addprefix -i,$(module))

##
# Primary build target
all : $(target) $(deps) ; @echo Build Complete


##
# Executable target
$(target) : $(objs) ; $(cc) $(ccflags) -o $@ $^


##
# Add dependents as build targets
include $(deps)


##
# Remove build artifacts
.PHONY : clean
clean : ; $(RM) --force $(target) $(objs) $(deps)


##
# Output targets
.PHONY: output
output: $(objs) $(deps)
	@echo Build Objects
	@echo OBJS: $(objs)
	@echo DEPS: $(deps)
