NAME=main
PARTS=faisceau.tex csp.tex sheaves.tex pp.tex
WRAPPER=nix-shell --pure --command
LATEX=pdflatex

all: $(NAME).pdf

$(NAME).pdf: $(NAME).tex inc.tex $(PARTS)
	$(WRAPPER) '$(LATEX) $(NAME).tex'

clean:
	@touch $(NAME).pdf
	rm $(NAME).pdf

rec: clean all

.PHONY: all clean rec


