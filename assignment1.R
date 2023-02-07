#first we'll load our libraries
#make sure to install the tidyverse if it's not already installed
library(tidyverse)
library(lubridate)
library(dplyr)

# run this line below load the data for this assignment
# we'll use a built-in dataset from the ggplot2 package (loaded as party of the tidyverse)
housesales <- ggplot2::txhousing

# This dataset includes monthly housing sales by city in the state of texas from 2000-2015.
# let's take a look at it
housesales

# You can also see it in the view window by running this line
View(housesales)


# FOR EACH OF THE QUESTIONS BELOW, WRITE YOUR WORKING R CODE TO RETURN THE REQUESTED RESULTS
# USE COMMENTS (PREFACED BY THE #) TO ACCOMPANY YOUR CODE TO EXPLAIN WHAT YOU'RE DOING 
# FOR EACH STEP AS NEEDED



# 1) The column "year" indicates the year. Filter to return only results from 2015. 
# (note that because the column is numeric, you wouldn't use quotes as with text when setting your filter value)

housesales %>% # calling on the data set using the pipe operator to organize the code efficiently
  filter(year == 2015) # using the filter() function to return all of the entries from 2015


# 2) Similar to the above question, filter results from 2010 onward, so 2010-2015.


housesales %>% # calling on the data set using the pipe operator to organize the code efficiently
  filter(year >= 2010) # using the filter() function and the arithmetic operator of >= (greater than or equal to)
# to return results from 2010-2015


# 3) The "city" column contains the relevant city. Filter to return only results for Houston
# (note, remember R is case sensitive)

housesales %>% # calling on the data set using the pipe operator to organize the code efficiently
  filter(city == "Houston") # using the filter() function to return all entries from the variable Houston


# 4) Filter for only where the city is Houston as above, and now also filter for only 
# the year 2010. The results should give you 12 records, one for each month in 2010 for Houston.


housesales %>% # calling on the data set using the pipe operator to organize the code efficiently
  filter(year == 2010, city == "Houston") # I added the "," notation to the filter() function
# to include two filters on the data set


# 5) Build on what you've done above. Filter for only where the city is Houston as above, 
# and the year is 2010. Now add a sort using arrange() to sort the results based on the number
# of home sales (the "sales" column) from most to least.

housesales %>% # calling on the data set using the pipe operator to organize the code efficiently
  filter(year == 2010, city == "Houston") %>% # I used the piper operator again to easily organize the code
  arrange(desc(sales)) # used the arrange() function and the dplyr desc() function for the variable
# "sales" to take the filtered data and list them in a specific order


# 6) Piggyback on what you've done above. 
# Do the same as #5, only this time instead of Houston return records for Dallas

housesales %>% #calling on the data set using the pipe operator to organize the code efficiently
  filter(year == 2010, city == "Dallas") %>% # I used the same string of code from Q5 but replaced "Houston" with "Dallas"
  arrange(desc(sales)) # reference line 63


# 7) Sometimes metrics like home sales have a seasonal quality to them, much like 
# retail sales. There are times of year that are naturally more active, and others where
# it's slower.
# That means sometimes you'll want to isolate the same time period across multiple years
# to compare how it went based on similar times of year.
# Let's do that here: we're going to look only for sales that happened in the month of JUNE.
#
# Filter for the city is Dallas, and the month is June (the number 6). 


housesales %>% #calling on the data set using the pipe operator to organize the code efficiently
  filter(month == 6, city == "Dallas") # Using the filter() function, I specified the data to only use data from month 6 or June in the city of Dallas.


# 8) Build on what we've done above. Now that we have June numbers for Dallas for every year,
# arrange the results by sales from highest-to-lowest to show what year had the highest June sales.


housesales %>% #calling on the data set using the pipe operator to organize the code efficiently
  filter(month == 6, city == "Dallas") %>% # reference line 86
  arrange(desc(sales)) # reference line 63


# 9) Now do the same as Question 8, but this time instead of Dallas, show results for Corpus Christi


housesales %>% # calling on the data set using the pipe operator to organize the code efficiently
  filter(month == 6, city == "Corpus Christi") %>% # changed line 86 to represent the different city
  arrange(desc(sales)) # reference line 63


# 10) Finally, using the Corpus Christi code from Question 9, instead of June
# use the month of February (2) instead.

housesales %>% # calling on the data set using the pipe operator to organize the code efficiently
  filter(month == 2, city == "Corpus Christi") %>% # changed the month code from line 63 to 2 to represent February
  arrange(desc(sales)) # reference line 63
