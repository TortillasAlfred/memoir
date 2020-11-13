ALL_FIGURE_NAMES=$(shell cat main.figlist)
ALL_FIGURES=$(ALL_FIGURE_NAMES:%=%.pdf)

allimages: $(ALL_FIGURES)
	@echo All images exist now. Use make -B to re-generate them.

FORCEREMAKE:

include $(ALL_FIGURE_NAMES:%=%.dep)

%.dep:
	mkdir -p "$(dir $@)"
	touch "$@" # will be filled later.

figures/main-figure0.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "figures/main-figure0" "\def\tikzexternalrealjob{main}\input{main}"

figures/main-figure0.pdf: figures/main-figure0.md5
figures/main-figure1.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "figures/main-figure1" "\def\tikzexternalrealjob{main}\input{main}"

figures/main-figure1.pdf: figures/main-figure1.md5
figures/main-figure2.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "figures/main-figure2" "\def\tikzexternalrealjob{main}\input{main}"

figures/main-figure2.pdf: figures/main-figure2.md5
figures/main-figure3.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "figures/main-figure3" "\def\tikzexternalrealjob{main}\input{main}"

figures/main-figure3.pdf: figures/main-figure3.md5
figures/main-figure4.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "figures/main-figure4" "\def\tikzexternalrealjob{main}\input{main}"

figures/main-figure4.pdf: figures/main-figure4.md5
figures/main-figure5.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "figures/main-figure5" "\def\tikzexternalrealjob{main}\input{main}"

figures/main-figure5.pdf: figures/main-figure5.md5
figures/main-figure6.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "figures/main-figure6" "\def\tikzexternalrealjob{main}\input{main}"

figures/main-figure6.pdf: figures/main-figure6.md5
figures/main-figure7.pdf: 
	pdflatex -halt-on-error -interaction=batchmode -jobname "figures/main-figure7" "\def\tikzexternalrealjob{main}\input{main}"

figures/main-figure7.pdf: figures/main-figure7.md5
