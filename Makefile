all: resume.pdf

resume.pdf: *.tex *.bib
	pdflatex resume
	bibtex resume
	pdflatex resume
	pdflatex resume

tidy:
	rm -f *.aux *.log *.bbl *.blg

clean: tidy
	rm -f resume.pdf
