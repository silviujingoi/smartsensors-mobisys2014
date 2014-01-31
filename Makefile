NAME = smartsensors
TARGET = $(NAME).pdf
SOURCE = smartsensors.tex \
     introduction.tex \
	 related.tex \
     approach.tex \
	 evaluation.tex \
 	 conclusion.tex \
	 mobisys.bib \
	 abstract.tex \
 	 prototype.tex \
         experimental-setup.tex \
 	 results.tex



$(TARGET): $(SOURCE)
	pdflatex $(NAME)
	bibtex $(NAME)
	pdflatex $(NAME)
	pdflatex $(NAME)

clean:
	rm -f $(TARGET) *.aux *bbl *blg 
