NAME=Relatorio-Progresso-Vagner-Clementino
BIBLIOGRAPHY=relatorio
all: aspell compile clean
compile: $(NAME).tex $(BIBLIOGRAPHY).bib
	@pdflatex -shell-escape $(NAME).tex
	@bibtex $(NAME)
	@pdflatex $(NAME).tex
	@pdflatex $(NAME).tex
	@evince $(NAME).pdf
	@echo Gerado o arquivo $(NAME).pdf
clean:
	@rm -rf ${NAME}.aux ${NAME}.blg ${NAME}.bbl ${NAME}.dvi ${NAME}.ps
	${NAME}.log ${NAME}.toc ${NAME}.out ${NAME}.nav ${NAME}.snm
	${NAME}.synctex.gz *.bak ${NAME}.lof ${NAME}.lot
aspell: $(find . -name \*.tex -print)
	aspell --encoding="utf-8" -c -t=tex --lang="pt_BR" $(NAME).tex
