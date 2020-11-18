#====Box plots ====
#creating box plots to compare variance between the 4 hospital
#peer groups, for each of the 6 indicators. 

# Reading data file 
birth.data <- read.csv(paste(path.data, "births_clean_1.csv", sep = ""), 
                       stringsAsFactors = FALSE)


#INDICATOR #1
#grouping hospital peer size with indicator #1 
small_indicator1 <- (small$Vaginal.delivery.for.first.time.eligible.mothers..percentages.) #small peer group grouped by first outcome 
medium_indicator1 <- (medium$Vaginal.delivery.for.first.time.eligible.mothers..percentages.)#small peer group grouped by first outcome
large_indicator1 <- (large$Vaginal.delivery.for.first.time.eligible.mothers..percentages.)#small peer group grouped by first outcome
xlarge_indicator1 <- (xlarge$Vaginal.delivery.for.first.time.eligible.mothers..percentages.)#small peer group grouped by first outcome

#defining margins for plot
par(mar=c(4.1, 9, 4.1, 2.1))
#box plot

pdf(paste(path.figures, "ind1.pdf"), height = 5, width = 5)
boxplot(small_indicator1, medium_indicator1, large_indicator1, xlarge_indicator1, 
        col = c("lightblue1", "cadetblue3", "deepskyblue", "midnightblue"), 
        main = "Vaginal Delivery for First Time Eligible Mothers", 
        xlab = "Frequency", 
        names = c("Small Peer Group", "Medium Peer Group", "Large Peer Group", "XLarge Peer Group"),
        ylim= c(0.5, 0.9),
        horizontal = TRUE,
        las = TRUE)

#INDICATOR #2
#grouping hospital peer size with indicator #2 
small_indicator2 <- (small$Early.repeat.CS.delivery..percentages.)#small peer group grouped by second outcome
medium_indicator2 <- (medium$Early.repeat.CS.delivery..percentages.)#small peer group grouped by second outcome
large_indicator2 <- (large$Early.repeat.CS.delivery..percentages.)#small peer group grouped by second outcome
xlarge_indicator2 <- (xlarge$Early.repeat.CS.delivery..percentages.)#small peer group grouped by second outcome

#creating a box plot to show comparison between the 4 peer groups and the second indicator
pdf(paste(path.figures, "ind2.pdf"), height = 5, width = 5)
boxplot(small_indicator2, medium_indicator2, large_indicator2, xlarge_indicator2, 
        col = c("lightblue1", "cadetblue3", "deepskyblue", "midnightblue"), 
        main = "Early Repeat CS delivery", 
        xlab = "Frequency", 
        names = c("Small Peer Group", "Medium Peer Group", "Large Peer Group", "XLarge Peer Group"),
        ylim= c(0.18, 0.6),
        horizontal = TRUE, 
        las = TRUE)

#INDICATOR #3
#grouping hospital peer size with indicator #3
small_indicator3 <- (small$Post.date.inductions.done.early..percentages.)#small peer group grouped by third outcome
medium_indicator3 <- (medium$Post.date.inductions.done.early..percentages.)#medium peer group grouped by third outcome
large_indicator3 <- (large$Post.date.inductions.done.early..percentages.)#large peer group grouped by third outcome
xlarge_indicator3 <- (xlarge$Post.date.inductions.done.early..percentages.)#Xlarge peer group grouped by third outcome

#creating a box plot to show comparison between the 4 peer groups and the third indicator
pdf(paste(path.figures, "ind3.pdf"), height = 5, width = 5)
boxplot(small_indicator3, medium_indicator3, large_indicator3, xlarge_indicator3, 
        col = c("lightblue1", "cadetblue3", "deepskyblue", "midnightblue"), 
        main = "Post Due Date Induction Done Early", 
        xlab = "Frequency", 
        names = c("Small Peer Group", "Medium Peer Group", "Large Peer Group", "XLarge Peer Group"),
        ylim= c(0, 0.025),
        horizontal = TRUE, 
        las = TRUE)

#INDICATOR #4
#grouping hospital peer size with indicator #4 
small_indicator4 <- (small$Only.intermittent.Auscultations.in.low.risk.deliveries..percentages.)#small peer group grouped by fourth outcome
medium_indicator4 <- (medium$Only.intermittent.Auscultations.in.low.risk.deliveries..percentages.)#small peer group grouped by fourth outcome
large_indicator4 <- (large$Only.intermittent.Auscultations.in.low.risk.deliveries..percentages.)#small peer group grouped by fourth outcome
xlarge_indicator4<- (xlarge$Only.intermittent.Auscultations.in.low.risk.deliveries..percentages.)#small peer group grouped by fourth outcome

#creating a box plot to show comparison between the 4 peer groups and the second indicator
pdf(paste(path.figures, "ind4.pdf"), height = 5, width = 5)
boxplot(small_indicator4, medium_indicator4, large_indicator4, xlarge_indicator4, 
        col = c("lightblue1", "cadetblue3", "deepskyblue", "midnightblue"), 
        main = "Only Intermitted Ausculations in Low Risk Deliveries", 
        xlab = "Frequency", 
        names = c("Small Peer Group", "Medium Peer Group", "Large Peer Group", "XLarge Peer Group"),
        ylim= c(0.5, 0.9),
        horizontal = TRUE, 
        las = TRUE)

#INDICATOR #5
#grouping hospital peer size with indicator #5 
small_indicator5 <- (small$Healthy.babies.fed.with.only.breastmilk..percentages.)#small peer group grouped by second outcome
medium_indicator5 <- (medium$Healthy.babies.fed.with.only.breastmilk..percentages.)#small peer group grouped by second outcome
large_indicator5 <- (large$Healthy.babies.fed.with.only.breastmilk..percentages.)#small peer group grouped by second outcome
xlarge_indicator5 <- (xlarge$Healthy.babies.fed.with.only.breastmilk..percentages.)#small peer group grouped by second outcome

#creating a box plot to show comparison between the 4 peer groups and the second indicator
pdf(paste(path.figures, "ind5.pdf"), height = 5, width = 5)
boxplot(small_indicator5, medium_indicator5, large_indicator5, xlarge_indicator5, 
        col = c("lightblue1", "cadetblue3", "deepskyblue", "midnightblue"), 
        main = "Healthy Babies Fed Only with Breastmilk", 
        xlab = "Frequency", 
        names = c("Small Peer Group", "Medium Peer Group", "Large Peer Group", "XLarge Peer Group"),
        ylim= c(0.55, 0.95),
        horizontal = TRUE, 
        las = TRUE)

#INDICATOR #6
#grouping hospital peer size with indicator #6
small_indicator6 <- (small$Attempted.VBAC..percentages.)#small peer group grouped by sixth outcome
medium_indicator6 <- (medium$Attempted.VBAC..percentages.)#small peer group grouped by sixth outcome
large_indicator6 <- (large$Attempted.VBAC..percentages.)#small peer group grouped by sixth outcome
xlarge_indicator6 <- (xlarge$Attempted.VBAC..percentages.)#small peer group grouped by sixth outcome

#creating a box plot to show comparison between the 4 peer groups and the second indicator
pdf(paste(path.figures, "ind6.pdf"), height = 5, width = 5)
boxplot(small_indicator6, medium_indicator6, large_indicator6, xlarge_indicator6, 
        col = c("lightblue1", "cadetblue3", "deepskyblue", "midnightblue"), 
        main = "Attempted VBAC after CS", 
        xlab = "Frequency", 
        names = c("Small Peer Group", "Medium Peer Group", "Large Peer Group", "XLarge Peer Group"),
        ylim= c(0.2, 0.5),
        horizontal = TRUE, 
        las = TRUE)

