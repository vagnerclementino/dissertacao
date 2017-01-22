NAME=Dissertacao_Vagner_Clementino
BIBLIOGRAPHY=../bib/bibliografia
DIR_PDF_NAME=../output
build: compile clean
all: aspell compile clean
compile: $(NAME).tex $(BIBLIOGRAPHY).bib
	@pdflatex -shell-escape $(NAME).tex
	@bibtex $(NAME)
	@pdflatex $(NAME).tex
	@pdflatex $(NAME).tex
	@mv $(NAME).pdf $(DIR_PDF_NAME)
	@evince $(DIR_PDF_NAME)/$(NAME).pdf
	@echo Gerado o arquivo $(NAME).pdf no diretório $(DIR_PDF_NAME)
	@clear
clean:
	@rm -rf ${NAME}.aux ${NAME}.blg ${NAME}.bbl ${NAME}.dvi ${NAME}.ps ${NAME}.log ${NAME}.toc ${NAME}.out ${NAME}.nav ${NAME}.snm ${NAME}.synctex.gz *.bak ${NAME}.lof ${NAME}.lot
aspell: $(find . -name \*.tex -print)
	@for f in $$(find . -name \*.tex -print); do\
		aspell --encoding="utf-8" -c -t=tex --lang="pt_BR" $$f; \
	done;
