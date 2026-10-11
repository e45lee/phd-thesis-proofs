ROCQMAKEFILE ?= Makefile.rocq
COQDOCFLAGS ?= --utf8 -g --toc --index indexpage

all: $(ROCQMAKEFILE)
	+$(MAKE) -f $(ROCQMAKEFILE) all

html: $(ROCQMAKEFILE) all
	+$(MAKE) -f $(ROCQMAKEFILE) html COQDOCEXTRAFLAGS="$(COQDOCFLAGS)"

clean:
	if [ -f $(ROCQMAKEFILE) ]; then $(MAKE) -f $(ROCQMAKEFILE) cleanall; fi
	$(RM) $(ROCQMAKEFILE) $(ROCQMAKEFILE).conf
	$(RM) -r html

$(ROCQMAKEFILE): _CoqProject
	rocq makefile -f _CoqProject -o $(ROCQMAKEFILE)

.PHONY: all html clean
