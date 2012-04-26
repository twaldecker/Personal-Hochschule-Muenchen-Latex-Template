MAINFILE = main.tex
AUSGABE = ausgabe
OPTIONS = --jobname=$(AUSGABE)

default: pdf

pdf:
	pdflatex $(OPTIONS) $(MAINFILE)

glossary:
	makeglossaries $(AUSGABE)

clean:
	find . \
	-path './.*' -prune -o \
	-type f \( \
	-name "*.aux" \
	-o -name "*.aux" \
	-o -name "*.ilg" \
	-o -name "*.lof" \
	-o -name "*.log" \
	-o -name "*.nlo" \
	-o -name "*.nls" \
	-o -name "*.out" \
	-o -name "*.toc" \
	-o -name "*.snm" \
	-o -name "*.nav" \
	-o -name "*.idx" \
	-o -name "*.glg" \
	-o -name "*.glo" \
	-o -name "*.gls" \
	-o -name "*.ist" \) \
	-print0 | xargs -0 rm
