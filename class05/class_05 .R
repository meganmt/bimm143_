#' ---
#' title: "CLass 5: Data Visualization and graphs in R"
#' author: "Megan Truong"
#' date: "January 23, 2020"
#' ---

#Class 5
#Data Visualization and graphs in R

plot(1:10, col="blue", typ="o")

#Need to import/read input data first
baby <- read.table("bimm143_05_rstats/weight_chart.txt",
                   header = TRUE)

#Basic plot of age vs weight
plot(baby)
plot(baby$Age, baby$Weight)

#For a line plot with filled square
plot(baby$Age, baby$Weight, typ= "o", pch=15)

#for plot point size to 1.5 normal size and line width  thickness 2x
plot(baby$Age, baby$Weight, typ="o", pch=15, 
     cex=1.5, lwd=2)

#y axis limits to 2-10kg
plot(baby$Age, baby$Weight, typ="o", pch=15, 
     cex=1.5, lwd=2, ylim=c(2,10))

#x label to be Age and Y to be Weight
plot(baby$Age, baby$Weight, typ="o", pch=15, 
     cex=1.5, lwd=2, ylim = c(2,10), 
     xlab = "Age", ylab = "Weight")

#title at top
plot(baby$Age, baby$Weight, typ="o", pch=15, 
     cex=1.5, lwd=2, ylim = c(2,10), 
     xlab = "Age (months)", ylab = "Weight (kg)", 
     main = "Baby Weights")

#silly example of 'pch' plot character and 'cex' size
plot(1:5, cex=1:5, pch=1:5)

#BAR PLOT of feature_counts file separated by 'tab'
mouse <- read.table("bimm143_05_rstats/feature_counts.txt", 
                    sep = "\t", header = TRUE)
#View(mouse)

#BarPlot of Mouse Count
barplot(mouse$Count)

#Make it horizontal and blue :)
barplot(mouse$Count, 
        horiz =  TRUE, col = "lightblue")

#Add Names
barplot(mouse$Count, 
        horiz =  TRUE, col = "lightblue",
        names.arg = mouse$Feature, las = 1)

#par 
par(mar=c(5,10,0,1))
barplot(mouse$Count, 
        horiz =  TRUE, col= "lightblue",
        names.arg = mouse$Feature, las = 1,)

par(mar=c(5,4,2,2))
plot(1:10)

#Rainbow colors
mf <- read.delim("bimm143_05_rstats/male_female_counts.txt")
barplot(mf$Count, names.arg=mf$Sample, 
        col=rainbow(nrow(mf)), las =2, ylab= "Counts")

#Different female and male colors
barplot(mf$Count, names.arg=mf$Sample, 
        col=c("blue2", "red2"), las =2, ylab= "Counts")

#Coloring by Value
genes <-  read.delim("bimm143_05_rstats/up_down_expression.txt")

#Shows down regulated, unchanging and upregualted (STATE COL)
table(genes$State)

plot(genes$Condition1, genes$Condition2, col=genes$State)

#palette colors: black, red, green3, blue, cyan, magenta, yellow, gray
palette()




