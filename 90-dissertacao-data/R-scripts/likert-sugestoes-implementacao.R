### just reproduce your input
library(HH)

sgbar.likert <- data.frame('Muito Difícil' = c(8,2,4,0,2,0,3,0),
                           'Difícil'       = c(16,7,3,1,11,0,12,16),
                           'Neuto'         = c(3,11,9,8,12,8,4,7),
                           'Fácil'         = c(2,8,10,17,3,16,7,6),
                           'Muito Fácil'   = c(0,1,3,3,1,5,3,0)
                           )
yLabels = c('Recomendação #8',
            'Recomendação #7',
            'Recomendação #6',
            'Recomendação #5',
            'Recomendação #4',
            'Recomendação #3',
            'Recomendação #2',
            'Recomendação #1'
            
)

WORKSPACE <-"~/workspace/dissertacao/90-dissertacao-data/R-scripts/" 
IMG_DIR <-'./img/'
FILE_NAME <- 'plot_likert_avaliacao_implementacao_melhorias_grayscale'
PS_FILE_NAME <-  paste(FILE_NAME,'.ps', sep='')
PDF_FILE_NAME <- paste(FILE_NAME, '.pdf', sep='')
PNG_FILE_NAME <- paste(FILE_NAME, '.png', sep='')
  
### 
#Definindo o workspace
setwd(WORKSPACE)

# store the original col names used in custom panel function
origNames <- colnames(sgbar.likert)

# define a custom panel function
myPanelFunc <- function(...){
  panel.likert(...)
  vals <- list(...)
  DF <- data.frame(x=vals$x, y=vals$y, groups=vals$groups)
  
  ### some convoluted calculations here...
  grps <- as.character(DF$groups)
  for(i in 1:length(origNames)){
    grps <- sub(paste0('^',origNames[i]),i,grps)
  }
  
  DF <- DF[order(DF$y,grps),]
  
  DF$correctX <- ave(DF$x,DF$y,FUN=function(x){
    x[x < 0] <- rev(cumsum(rev(x[x < 0]))) - x[x < 0]/2
    x[x > 0] <- cumsum(x[x > 0]) - x[x > 0]/2
    return(x)
  })
  
  subs <- sub(' Positive$','',DF$groups)
  collapse <- subs[-1] == subs[-length(subs)] & DF$y[-1] == DF$y[-length(DF$y)]
  DF$abs <- abs(DF$x)
  DF$abs[c(collapse,FALSE)] <- DF$abs[c(collapse,FALSE)] + DF$abs[c(FALSE,collapse)]
  DF$correctX[c(collapse,FALSE)] <- 0
  DF <- DF[c(TRUE,!collapse),]
  
  DF$perc <-format(ave(DF$abs,DF$y,FUN=function(x){x/sum(x) * 100}), digits=1, nsmall=1)
  ###
  
  #panel.text(x=DF$correctX+.2, y=DF$y, label=paste0(DF$perc,'%'), cex=0.5)
}

# plot passing our custom panel function
likert(sgbar.likert,
       scales = list(y = list(labels = yLabels)),
       xlab="Número de Respostas",
       main="Avaliação da Implementação das Melhorias",
       reference.line.col="black",
       col=likertColorBrewer(length(sgbar.likert),
                             ReferenceZero=NULL,
                             BrewerPaletteName="Greys",
                             middle.color="black"
       ),
       
       panel=myPanelFunc)

full_name <- paste(IMG_DIR, PS_FILE_NAME, sep='')
dev.copy(device = postscript, full_name)
dev.off()

full_name <- paste(IMG_DIR,PDF_FILE_NAME, sep='')
dev.copy(device = pdf, full_name)
dev.off()

full_name <- paste(IMG_DIR,PNG_FILE_NAME, sep='')
dev.copy(device = png, full_name)
dev.off()