NAME=defesa-vagner-clementino
BIBLIOGRAPHY=defesa-vagner-clementino
DIR_BIB=../bib
DIR_PDF_NAME=../output/
all: aspell compile clean
compile: $(NAME).tex $(DIR_BIB)/$(BIBLIOGRAPHY).bib
	@pdflatex -shell-escape $(NAME).tex
	@bibtex $(NAME)
	@pdflatex $(NAME).tex
	@pdflatex $(NAME).tex
	@mv $(NAME).pdf ${DIR_PDF_NAME}
	@evince ${DIR_PDF_NAME}$(NAME).pdf
	@echo Gerado o arquivo $(NAME).pdf no diretório $(DIR_PDF_NAME)
clean:
	@rm -f ${NAME}.aux ${NAME}.blg ${NAME}.bbl ${NAME}.dvi ${NAME}.ps ${NAME}.log ${NAME}.toc ${NAME}.out ${NAME}.nav ${NAME}.snm ${NAME}.synctex.gz *.bak
aspell: $(NAME).tex
	@aspell --encoding="utf-8" -c -t=tex --lang="pt_BR" $(NAME).tex
