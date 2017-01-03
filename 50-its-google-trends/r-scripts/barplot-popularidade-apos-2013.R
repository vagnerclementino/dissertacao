data_folder <- "/home/vagner/workspace/ITSGoogleTrends/data"
csv_data_file <- "its-popularidade-media-apos-2013.csv"
out_filename <- "its-popularidade-media-apos-2013.png"

csv_file <- paste(data_folder,csv_data_file,sep="/")

print(csv_file)

df_its <- read.csv(file=csv_file,
	                 header= TRUE,
	                 sep = "\t",
	                 dec=",",
	                 colClasses=c(time="character", "numeric") 
	              )
png(filename=out_filename,width=1200, bg="white")
par(mar=c(4,4,1,1))

print (x)

bplot <- barplot(df_its[["Popularidade.Média"]],
		space=1,
		ylim=c(0,40),
		beside=TRUE,
		col=rainbow(32),
		las=3,
		cex.names = 0.45		
		)
title(main = "Popularidade Média ITS (Janeiro/2013 a Abril/2016)", font.main = 4, sub= "Dados obtidos do Google Trends <https://www.google.com/trends>")

text (x=bplot, y=df_its[["Popularidade.Média"]],labels=df_its[["Popularidade.Média"]], pos=3, offset=.5)
legend("topleft",
      df_its[["ITS"]],
      cex=0.8,
      bty="n",
      fill=rainbow(32)
      );
dev.off() #only 129kb in size