.PHONY: all pdf presentation_notes notes_only handouts handouts_print handouts_space clean

#all: pdf with_notes notes_only notes_only_print handouts handouts_print clean
#all: pdf with_notes handouts handouts_print handouts_space clean
all: pdf clean

pdf: 20181206_neurofedora.tex
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make 20181206_neurofedora_presentation.tex

clean:
	rm -fv *.aux *.bbl *.blg *.log *.nav *.out *.snm *.toc *.dvi *.vrb *.bcf *.run.xml *.cut *.lo*
	latexmk -c
