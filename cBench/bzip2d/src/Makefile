# ************ CCC - passing optimization flags ************ 
ifeq ($(CCC_OPTS),)
 CCC_OPTS =
endif
ifeq ($(CCC_OPTS_ADD),)
 CCC_OPTS_ADD =
endif

# Declarations
ifeq ($(ZCC),) 
 ZCC = clang-11 -mlvi-cfi 
endif
ifeq ($(LDCC),)
 LDCC = clang-11 -mlvi-cfi
endif
ifeq ($(LD_OPTS),)
 LD_OPTS = -o a.out
endif

# Actions
all:		
	$(ZCC) $(CCC_OPTS) $(CCC_OPTS_ADD) -c *.c
	$(LDCC) $(LD_OPTS) $(CCC_OPTS_ADD) -lm *.o

clean:
	rm -f a.out *.o *.a *.s *.i *.I
