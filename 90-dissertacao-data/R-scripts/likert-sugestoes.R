# Inputs
feature_names <- c("#1 - The CRMSs should support some type of automatic feedback related on the quality of reported text.",
                   "#2 - The CRMSs should enable source code search contained in your report, comments or attachments.")
                   
                  # "#3 - The CRMSs should allow Change Requests ranking according to the reporters reputation.",
                  # "#4 - The CRMSs should provide shortcuts for filtering and ranking, for example the latest CRs accessed by a developer.",
                  # "#5 - The CRMSs should support Continuous Integration processes.",
                  # "#6-  The CRMSs should give support beyond plain text specifications, for example Markdown.",
                  # "#7 - The CRMSs should provide automatic classification of CRs in terms of urgency.",
                  # "#8 - The CRMSs should support shared task, allowing collaborative work.")



num_features <- length(feature_names)
#y <- array(c(10,4,1,0, 3,4,2,0, 1,2,8,1, 0,0,5,1,  1,2,5,3), dim=c(4,num_features))
y <- array(c(1,3,10,13,2,0,2,7,13,7), dim=c(5,num_features))

# Calculate plot
num_neg_ratings <- 0
num_pos_ratings <- 0
for(i in 1:num_features) {
  num_neg_ratings = max(num_neg_ratings, sum(y[1:2,i]), sum(y[3:4,i]))
  num_pos_ratings = max(num_pos_ratings, sum(y[1:2,i]), sum(y[1:2,i]))
}
x <- array(0, dim=c(6, num_features))
for(i in 1:num_features) {
  x[1,  i] <- num_neg_ratings-sum(y[1:2, i])
  x[2:5,i] <- y[1:4, i]
  x[6,  i] <- num_pos_ratings-sum(y[3:4, i])
}

# do the plot
# ("jbl.png", width=600, height=280)
colors <- c("white","#c91629","#ff5c76","#4e9cff","#0557d6","white")
par(mar=c(4.1,10.1,4.1,4.1))
barplot(x, main="Feature Valence", axes=FALSE,
        col=colors, space=1.1, cex.axis=1.0, las=1, border=NA,
        names.arg=feature_names, cex=1.0, horiz=TRUE)
axis(
  side=1, # X axis
  at=c(0, num_neg_ratings/2, num_neg_ratings, num_neg_ratings+(num_pos_ratings/2), num_neg_ratings+num_pos_ratings),
  labels=c("Strongly disagree","Disagree", NA,"Agree","Strongly agree")
)
#dev.off()
