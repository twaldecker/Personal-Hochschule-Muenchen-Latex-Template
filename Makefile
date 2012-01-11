MAINFILE = main.tex
OPTIONS = --jobname=ausgabe
default: pdf

pdf:
	pdflatex $(OPTIONS) $(MAINFILE)

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
	-o -name "*.idx" \) \
	-print0 | xargs -0 rm
