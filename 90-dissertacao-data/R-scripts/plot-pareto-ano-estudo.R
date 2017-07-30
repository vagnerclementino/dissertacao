df_total_estudos <- read.csv("/home/vagner/workspace/dissertacao/90-dissertacao-data/csv/mapeamento-its/2016-12-19-total-artigos-por-ano.csv")

total_estudos <- df_total_estudos$total
names(total_estudos) <- df_total_estudos$ano_artigo
total_estudos_sort <- sort(total_estudos, decreasing=TRUE)

bp <- barplot(total_estudos,
              # panel.first=grid(ny=NULL, nx=NA, lty="dashed", col="black"),
              ylim=c(0, sum(total_estudos)* 1.05),
              axes=F,
              main="Ano de Publicação do Estudos"
)
grid(ny=NULL, nx=NA, lty="dashed", col="grey60")
lines(bp, cumsum(total_estudos_sort),
      type='o',
      xlab='',
      ylab='',
      pch=20
)
box()
#axis(side=2, at=seq(0, , by=25), labels=T, las=1)
mtext("Frequência", side=2, line=3)
axis(side=4, 
      at=seq(0, sum(total_estudos), length.out=5), 
      labels=seq(0, 100, length.out=5), 
      las=1)
mtext("Percentual Acumulativo", side=4, line=3)
mtext("Ano", 
       at=0.0,
       adj = 1 ,
       side=1,
       line=1, 
       col="black")

percent <- round(100 * total_estudos_sort/sum(total_estudos_sort), 1)
cum_pct <- round(100 * cumsum(total_estudos_sort/sum(total_estudos_sort)), 1)
text(x = bp, y = total_estudos + 1.5, labels =  total_estudos)
text(x = bp, y = cumsum(total_estudos_sort) + .7, labels = round(cum_pct))
