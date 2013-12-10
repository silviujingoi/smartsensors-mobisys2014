NAME = mobisys
TARGET = $(NAME).pdf
SOURCE = mobisys.tex \
     introduction.tex \
	 related.tex \
     approach.tex \
	 evaluation.tex \
 	 conclusion.tex \
	 mobisys.bib \
	 abstract.tex



$(TARGET): $(SOURCE)
	pdflatex $(NAME)
	bibtex $(NAME)
	pdflatex $(NAME)
	pdflatex $(NAME)

clean:
	rm -f $(TARGET) *.aux *bbl *blg 
