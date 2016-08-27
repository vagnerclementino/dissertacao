NAME=Dissertacao_Vagner_Clementino
BIBLIOGRAPHY=../bib/bibliografia
DIR_PDF_NAME=../output
all: aspell compile clean
compile: $(NAME).tex $(BIBLIOGRAPHY).bib
	pdflatex -shell-escape $(NAME).tex
	@bibtex $(NAME)
	@pdflatex $(NAME).tex
	@pdflatex $(NAME).tex
	@mv $(NAME).pdf $(DIR_PDF_NAME)
	@evince $(DIR_PDF_NAME)/$(NAME).pdf
	@echo Gerado os arquivos $(NAME).pdf e $(NAME).rtf  no diretório $(DIR_PDF_NAME)
clean:
	@rm -rf ${NAME}.aux ${NAME}.blg ${NAME}.bbl ${NAME}.dvi ${NAME}.ps ${NAME}.log ${NAME}.toc ${NAME}.out ${NAME}.nav ${NAME}.snm ${NAME}.synctex.gz *.bak ${NAME}.lof ${NAME}.lot
aspell: $(NAME).tex
	aspell --encoding="utf-8" -c -t=tex --lang="pt_BR" $(NAME).tex
