getwd()
install.packages(c("tidyverse","readstata13","readxl"))
library(tidyverse)
    library(Hmisc)
stopnfrisk_tibble <- as_tibble(sqf_2022_)
#non-white people
people_of_color <- subset(stopnfrisk_tibble, stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION != 'WHITE')
race_tibble <- as_tibble(people_of_color)

#frequency table
table(stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION)

#Create Variables
stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION[stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION == 'WHITE'] <- 'White'
stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION[stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION == 'BLACK'] <- 'Black'
stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION[stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION == 'AMERICAN INDIAN/ALASKAN NATIVE'] <- 'American Indian/Alaskan Native'
stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION[stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION == 'BLACK HISPANIC'] <- 'Black Hispanic'
stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION[stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION == 'WHITE HISPANIC'] <- 'White Hispanic'
stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION[stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION == 'ASIAN / PACIFIC ISLANDER'] <- 'Asian/Pacific Islander'
stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION[stopnfrisk_tibble$SUSPECT_RACE_DESCRIPTION == 'MIDDLE EASTERN/SOUTHWEST ASIAN'] <- 'Middle Eastern/Southwest Asian'

#table

