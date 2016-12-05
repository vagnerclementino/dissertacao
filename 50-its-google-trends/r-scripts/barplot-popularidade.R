
out_filename <- "its-popularidade-media-todos.png"

png(filename=out_filename,width=1200, bg="white")
par(mar=c(4,4,1,1))



bplot <- barplot(my.csv.data2[["Popularidade"]],
		space=1,
		ylim=c(0,20),
		beside=TRUE,
		col=rainbow(32),
		las=3,
		cex.names = 0.45		
		)
title(main = "Popularidade Média ITS (Janeiro/2004 a Abril/2016)", font.main = 4, sub= "Dados obtidos do Google Trends <https://www.google.com/trends>")

text (x=bplot, y=my.csv.data2[["Popularidade"]],labels=my.csv.data2[["Popularidade"]], pos=3, offset=.5)
legend("topleft",
      my.csv.data2[["ITS"]],
      cex=0.8,
      bty="n",
      fill=rainbow(32)
      );
dev.off() #only 129kb in size