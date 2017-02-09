  #Limpando memória
  rm(list=ls(all=TRUE))
  
  #carregando as bibliotecas necessarias
  #library(ggplot2)
  #library(scales)
  
  #Declarando as variáveis do gráfico
  WORKSPACE <-"~/workspace/dissertacao/99-parte-escrita/R-scripts/" 
  CSV_FILE <-'./data/201702050953_melhorias_fgrm_funcao_participantes.csv'
  FILE_SEPARATOR <- ","
  GRAPH_TITLE <-"Perfil dos Participantes: Função Desempenhada"
  IMG_DIR <-'./img/'
  FILE_NAME <- 'grafico_melhoria_fgrm_funcao_participantes'
  PS_FILE_NAME <-  paste(FILE_NAME,'.ps', sep='')
  PDF_FILE_NAME <- paste(FILE_NAME, '.pdf', sep='')
  PNG_FILE_NAME <- paste(FILE_NAME, '.png', sep='')
  
  
  #Definindo o workspace
  setwd(WORKSPACE)
  #Lendo o arquivos do tipo csv em um data_frame
  df_data <- read.csv(  file = CSV_FILE
                        , header = TRUE
                        , sep = FILE_SEPARATOR)
  #Exibindo os dados carregados
  show(df_data)
  
  
  total_estudos <- df_data$total
  #names(total_estudos) <- df_data$funcao
  total_estudos_sort <- sort(df_data$total, decreasing=TRUE)
  show(total_estudos_sort)
  

  bp <- barplot(total_estudos,
                # panel.first=grid(ny=NULL, nx=NA, lty="dashed", col="black"),
                ylim=c(0, sum(total_estudos)* 1.05),
                axes=F,
                main="Perfil dos Participantes: Função Desempenhada",
                col = gray.colors(length(df_data$funcao),
                                  start = 1,
                                  end = 0),
                las = 2

                

  )
  
  labs <- df_data$funcao
  text(cex=.9, x=bp+.25, y=-1.25, labs, xpd=TRUE, srt=45, pos=2)
  
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
  text(x = bp, y = total_estudos + 3.5, labels =  total_estudos)
  text(x = bp, y = cumsum(total_estudos_sort) - 4.5, labels = paste0(round(cum_pct), "%"), cex=.7)
  
  #Plotando o gráfico
  # full_name <- paste(IMG_DIR, PS_FILE_NAME, sep='')
  # dev.copy(device = postscript, full_name)
  # dev.off()
  # 
  full_name <- paste(IMG_DIR,PDF_FILE_NAME, sep='')
  dev.copy(device = pdf, full_name)
  dev.off()
  
  # full_name <- paste(IMG_DIR,PNG_FILE_NAME, sep='')
  # dev.copy(device = png, full_name)
  # dev.off()
