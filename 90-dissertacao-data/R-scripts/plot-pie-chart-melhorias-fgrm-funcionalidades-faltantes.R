#Limpando memória
rm(list=ls(all=TRUE))

#carregando as bibliotecas necessarias
library(ggplot2)
library(scales)

#Declarando as variáveis do gráfico
WORKSPACE <-"~/workspace/dissertacao/90-dissertacao-data/R-scripts/" 
CSV_FILE <-'./data/201702051635_funcionalidades_faltantes.csv'
FILE_SEPARATOR <- ","
WIDTH_BAR <- .3
LEGEND_NAME <- "Virou Extensão"
X_LABEL <- ""
Y_LABEL <- "Total" 
GRAPH_TITLE <-"Funcionalidades Faltantes nas FGRM"
X_AXIS_INCREMENT <- 10
IMG_DIR <-'./img/'
FILE_NAME <- 'grafico_melhorias_fgrm_funcionalidades_faltantes'

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

total_estudos <- df_data$total

#names(total_estudos) <- df_data$funcao
total_estudos_sort <- sort(df_data$total, decreasing=TRUE)
show(total_estudos_sort)

bp <- barplot(df_data$total,
              # panel.first=grid(ny=NULL, nx=NA, lty="dashed", col="black"),
              ylim=c(0, sum(total_estudos)* 1.05),
              axes=F,
              main=GRAPH_TITLE,
              col = gray.colors(length(df_data$funcionalidade),
                                start = 1,
                                end = 0),
              las = 2
              
)

labs <- df_data$funcionalidade
text(cex=.6, x=bp+.25, y=-1.25, labs, xpd=TRUE, srt=45, pos=2)

grid(ny=NULL, nx=NA, lty="dashed", col="grey60")
lines(bp, cumsum(total_estudos_sort),
      type='o',
      xlab='',
      ylab='',
      pch=20
)
box(which = "plot")
#axis(side=2, at=seq(0, , by=25), labels=T, las=1)
#mtext("Frequência", side=2, line=3)
axis(side=4,
     at=seq(0, sum(total_estudos), length.out=0),
     labels=seq(0, 100, length.out=0),
     las=1)
# mtext("Percentual Acumulativo", side=4, line=3)
# mtext("Ano",
#        at=0.0,
#        adj = 1 ,
#        side=1,
#        line=1,
#        col="black")

percent <- round(100 * total_estudos_sort/sum(total_estudos_sort), 1)
cum_pct <- round(100 * cumsum(total_estudos_sort/sum(total_estudos_sort)), 1)
text(x = bp, y = total_estudos + 7.5, labels =  total_estudos)
text(x = bp, y = cumsum(total_estudos_sort) - 8.5, labels = paste0(round(cum_pct), "%"), cex=.7)


full_name <- paste(IMG_DIR,PDF_FILE_NAME, sep='')
dev.copy(device = pdf, full_name)
dev.off()

