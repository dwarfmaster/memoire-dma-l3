FILE=main
WRAPPER=nix-shell --pure --command
LATEX=pdflatex

all: $(FILE).pdf

$(FILE).pdf: $(FILE).tex
	$(WRAPPER) '$(LATEX) $(FILE).tex'

clean:
	@touch $(FILE).pdf
	rm $(FILE).pdf

rec: clean all

.PHONY: all clean rec


