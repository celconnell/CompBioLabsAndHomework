# An epidemiological analysis: Children and the Syrian civil war

## Introduction

The Syrian war is an ongoing civil war that began on March 15th, 2011. As of March 2019, an estimated [5.7 million Syrians have fled Syria](<https://data2.unhcr.org/en/situations/syria>), and over [6.1 million people are internally displaced](<https://www.unhcr.org/sy/protection>). The United Nations estimated in 2016 that [400,000 Syrians were killed in the first five years of the war](<https://www.un.org/sg/en/content/sg/note-correspondents/2016-04-22/note-correspondents-transcript-press-stakeout-united>). The death toll has risen since. The World Health Organization cites the Syrian crisis as the worst humanitarian crisis yet in the 21st century.

Children are one of the most vulnerable groups in any population, especially in times of war, during which their physical and mental health are jeopardized, as well as their social and educational needs. Children are at risk for malnutrition, illness, abuse, and being recruited as fighters.

I'm using empirical data to study the correlation between the Syrian War and decreased educational and health attributes of Syrian children. This data can be used to see if any sub-populations are more at risk than others (e.g. children of certain governorates, age groups, gender, etc.)

My driving question for this project is: How is the Syrian civil war impacting the health and educational needs of Syrian children?

<hr>

## Summary of Data to be Analyzed

**NOTE**: *Everything you write must be in your own words and with proper attribution of ideas to original sources.  Failing to do so constitutes plagairism.* 

### Goals of original study that produced the data

In 2016, epidemiological studies and publications documenting the Syrian public health crisis were scarce. Relief organizations often focus on treating physical injuries, but there tends to be less focus on studying physical and psychological effects on vulnerable populations in the community such as children. The purpose of this study was to "document the impact of the conflict on the familial, educational and public health state of Syrian children" (Elsafti et al.)

### Brief description of methodology that produced the data

A cross-sectional descriptive sample analysis was conducted with questionnaires. Data were collected on May 21st and May 22nd 2015 by 30 data collectors handpicked by the Qatar Red Crescent (QRC) and the World Health Organization (WHO). Data collectors traveled to houses and internally displaced person (IDP) camps in 4 North Syrian governorates: Aleppo, Idleb, Hamah, and Lattakia. Data collectors gathered data from the children directly unless they were too young to speak.

### Type of data in this data set

#### Format of data  

The data is in Excel format. The original dataset contains 3 sheets (1 raw data file and 2 readmes).

#### Size of data (i.e., megabytes, lines, etc.)

The original dataset contains 1181 rows and 42 columns (1002 rows after removing ineligible participants). Each row represents a single Syrian child, and each column represents a variable measuring traits of the child. The original .xslx file obtained from Data Dryad is 204 Kb. 

#### Any inconsistencies in the data files?  Anything that looks problematic?  

Initially, researchers collected data from 1080 children. After excluding subjects with missing or unreadable data, the publication notes that 1001 children were included in the study. However, my subsetted version of the data includes 1002 subjects after removing missing values. Further analysis must be conducted to understand the discrepancy. 

<hr>

## Detailed Description of Analysis to be Done and Challenges Involved

I will create novel plots and graphs of some of the data that will fairly match the plots created by Elsafti et al.

Additionally, Elsafti et al. conducted a "chi-squared analysis to identify factors associated with the health problems by using water access, proper sanitation, healthy food, accessible health care, and vaccination state as outcome variables and by using [governorate], age category... and gender as predictors". I will replicate my own chi-squared analysis, as well as various mixed effect models, using similar predictors and response variables, to determine if certain sub-populations are more at risk than others.


<hr>

## References 

Elsafti AM, van Berlaer G, Al Safadi M, Debacker M, Buyl R, Redwan A, Hubloue I (2016) Children in the Syrian Civil War: the Familial, Educational, and Public Health Impact of Ongoing Violence. Disaster Medicine and Public Health Preparedness 10(06): 874-882. [<https://doi.org/10.1017/dmp.2016.165>](https://doi.org/10.1371/journal.pone.0126373)

Elsafti AM, van Berlaer G, Al Safadi M, Debacker M, Buyl R, Redwan A, Hubloue I (2016) Data from: Children in the Syrian civil war: the familial, educational, and public health impact of ongoing violence. Dryad Digital Repository. <https://doi.org/10.5061/dryad.73ff4>
