NAME=rascunho-protocolo
OUTPUT_DIR=/home/vagner/workspace/mapeamento-its/01-plan/piloto/output
SOURCE_DIR=/home/vagner/workspace/mapeamento-its/01-plan/piloto/src
all: compile view
compile: $(SOURCE_DIR)/$(NAME).rst
	@rst2pdf $(SOURCE_DIR)/$(NAME).rst -o $(OUTPUT_DIR)/$(NAME).pdf
	@rst2html $(SOURCE_DIR)/$(NAME).rst $(OUTPUT_DIR)/$(NAME).html
	@echo Gerado o arquivo $(NAME).pdf
	@echo Gerado o arquivo $(NAME).html
view: $(OUTPUT_DIR)/$(NAME).pdf $(OUTPUT_DIR)/$(NAME).html
	@evince $(OUTPUT_DIR)/$(NAME).pdf
	@firefox $(OUTPUT_DIR)/$(NAME).html