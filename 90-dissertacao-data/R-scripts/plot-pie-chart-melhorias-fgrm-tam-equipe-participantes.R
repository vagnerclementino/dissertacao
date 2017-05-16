#Limpando memória
rm(list=ls(all=TRUE))

#carregando as bibliotecas necessarias
library(ggplot2)
library(scales)

#Declarando as variáveis do gráfico
WORKSPACE <-"~/workspace/dissertacao/90-dissertacao-data/R-scripts/" 
CSV_FILE <-'./data/201705151550_frequencia_dimensoes.csv'
FILE_SEPARATOR <- ";"
WIDTH_BAR <- .3
LEGEND_NAME <- "Virou Extensão"
X_LABEL <- ""
Y_LABEL <- "Frequência" 
GRAPH_TITLE <-"Frequência de Dicas por Atributo"
X_AXIS_INCREMENT <- 50
IMG_DIR <-'./img/'
FILE_NAME <- 'grafico_implementacao_extensao_freq_dicas_atributo'
PS_FILE_NAME <-  paste(FILE_NAME,'.ps', sep='')
PDF_FILE_NAME <- paste(FILE_NAME, '.pdf', sep='')
PNG_FILE_NAME <- paste(FILE_NAME, '.png', sep='')

#Definindo o workspace
setwd(WORKSPACE)
#Lendo o arquivos do tipo csv em um data_frame
df_data <- read.csv(  file = CSV_FILE
                    , header = TRUE
                    , sep = FILE_SEPARATOR
                  )
#Exibindo os dados carregados
show(df_data)

#Maior valor do eixo y
ymax <- max(df_data$Frequência) * 1.5

#Plotando o gráfico
ggplot(data=df_data, aes(x=reorder(df_data$Dimensão, df_data$Frequência),
                                    y=df_data$Frequência, fill=df_data$Dimensão
                        )
       ) +
  geom_bar(colour="black",
           stat="identity",
           position=position_dodge(),
           width=WIDTH_BAR) + # Thinner lines
  scale_fill_grey(name=LEGEND_NAME,
                  start = 0,
                  end = .9,
                  guide = "none") + # Set legend title
  xlab(X_LABEL) +
  ylab(Y_LABEL) + # Set axis labels
  ggtitle(GRAPH_TITLE) +     # Set title
  theme_bw( ) +
  coord_flip(ylim = c(0, ymax)) +
  geom_text(aes(label=df_data$Frequência, hjust=-.5)) +
  scale_y_discrete(limits = c(seq(0,ymax,by=X_AXIS_INCREMENT)))

# full_name <- paste(IMG_DIR, PS_FILE_NAME, sep='')
# dev.copy(device = postscript, full_name)
# dev.off()

full_name <- paste(IMG_DIR,PDF_FILE_NAME, sep='')
dev.copy(device = pdf, full_name)
dev.off()

# full_name <- paste(IMG_DIR,PNG_FILE_NAME, sep='')
# dev.copy(device = png, full_name)
# dev.off()