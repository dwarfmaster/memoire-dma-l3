NAME=main
PARTS=canon.tex clones.tex csp.tex inc.tex naif.tex pp.tex rel.tex sheaves.tex syntaxic.tex
WRAPPER=nix-shell --pure --command
LATEX=pdflatex

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex inc.tex $(PARTS)
	$(WRAPPER) '$(LATEX) $(NAME).tex && $(LATEX) $(NAME).tex'

clean:
	@touch $(NAME).pdf
	rm $(NAME).pdf

rec: clean all

.PHONY: all clean rec


