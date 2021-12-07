
##
# Rules

# Create dependent list from a CC source file
%.d : %.cc ; $(cc) $(ccflags) -c -MM -MT $(<:.cc=.o) -MT $(<:.cc=.d) -MF $(<:.cc=.d) $<

# Compile a CC file into an object file
%.o : %.cc ; $(cc) $(ccflags) -c -o $@ $<
