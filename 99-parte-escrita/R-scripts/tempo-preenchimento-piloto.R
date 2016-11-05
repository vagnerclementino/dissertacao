library(ggplot2)
library(scales)

df_tempo_form <- data.frame(
   participante = c('P2',
                    'P4',
                    'P5',
                    'P6',
                    'P7',
                    'P8'),
   inicio = c('00:00:00',
             '10:15:00',
              '13:09:00',
              '14:07:00',
              '14:09:00',
              '14:17:00'),
   
   fim =  c('00:14:00',
           '10:25:00',
           '13:19:00',
           '14:11:00',
           '14:18:00',
           '14:23:00')
   
  )
head(df_tempo_form)

fim <- strptime(df_tempo_form$fim, format = "%H:%M:%S")

head(fim)

inicio <- strptime(df_tempo_form$inicio, format = "%H:%M:%S")

head(inicio)


diff <- as.numeric(difftime(fim, inicio, units = "min"))

diff 

plot( x = df_tempo_form$participante, y = diff)

p <- ggplot(df_tempo_form, aes(x = df_tempo_form$participante, y = diff))
p + 
# geom_point() + 
geom_point(colour = "black", size = 3) +
ggtitle("Tempo de Preenchimento por Participante") +
labs( y = 'Tempo (minutos)', x = 'Participante') +
geom_hline(yintercept =  median(diff) , color = "red", size = 1) +
geom_hline(yintercept =  mean(diff) , color = "blue", size = 1, linetype="dashed") +
  geom_text(aes(label = "Média"),  y = mean(diff)-.3, x = 3)  +
  geom_text(aes(label = "Mediana"),  y = median(diff)+.3, x = 5)  



