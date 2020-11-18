#====Organizing data into peer groups====

#Comparing facility outcomes to facility size of BC hospitals 
#Data taken from the perinatal registry of BC 

# Reading data file 
birth.data <- read.csv(paste(path.data, "births_clean_1.csv", sep = ""), 
                       stringsAsFactors = FALSE)
str(birth.data) #structure of birth.data file 
head(birth.data) 
tail(birth.data)

#Hospital peer groups
# Categorizing hospitals, by size, into peer groups 
# Perinatal BC categorizes peer groups based on number of deliveries per year:
# small: <250 deliveries, medium: 250-999 deliveries, 
# large: 1,000-2,499, and extra-large: 2,499+

#small hospitals: <250
small <- birth.data[birth.data$Total.deliveries...YTD. < 250, ]

#removing 0's from small_indicator6
small[small == 0] <- NA

#medium hospitals:250-999 deliveries
medium <- birth.data[birth.data$Total.deliveries...YTD. >= 250 & birth.data$Total.deliveries...YTD. <= 999, ]

#large hospitals 
large <- birth.data[birth.data$Total.deliveries...YTD. >= 1000 & birth.data$Total.deliveries...YTD. <= 2499, ]

#extra large hospitals 
xlarge <- birth.data[birth.data$Total.deliveries...YTD. >= 2499, ]


