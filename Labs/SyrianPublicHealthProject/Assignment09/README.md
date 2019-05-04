# An epidemiological analysis: Children and the Syrian civil war

### Biological question
How is the Syrian civil war impacting the health and educational needs of Syrian children?

### Context
The Syrian war is an ongoing civil war that began on March 15th, 2011. As of March 2019, an estimated [5.7 million Syrians have fled Syria](https://data2.unhcr.org/en/situations/syria), and over [6.1 million people are internally displaced](https://www.unhcr.org/sy/protection). The United Nations estimated in 2016 that [400,000 Syrians were killed in the first five years of the war](https://www.un.org/sg/en/content/sg/note-correspondents/2016-04-22/note-correspondents-transcript-press-stakeout-united). The death toll has risen since. The World Health Organization cites the Syrian crisis as the worst humanitarian crisis yet in the 21st century.

Children are one of the most vulnerable groups in any population, especially in times of war, during which their physical and mental health are jeopardized, as well as their social and educational needs. Children are at risk for malnutrition, illness, abuse, and being recruited as fighters.

In 2016, epidemiological studies and publications documenting the Syrian public health crisis were scarce. Relief organizations often focus on treating physical injuries, but there tends to be less focus on studying physical and psychological effects on vulnerable populations in the community such as children. 

### Methods
##### The source of the data:
I found a publication entitled **[Children in the Syrian civil war: the familial, educational, and public health impact of ongoing violence](https://www.cambridge.org/core/journals/disaster-medicine-and-public-health-preparedness/article/children-in-the-syrian-civil-war-the-familial-educational-and-public-health-impact-of-ongoing-violence/A7CC15D863191359990082151EC66186)**, and its [associated data](https://datadryad.org/resource/doi:10.5061/dryad.73ff4). The purpose of this study was to "document the impact of the conflict on the familial, educational and public health state of Syrian children" (Elsafti et al.)

A cross-sectional descriptive sample analysis was conducted with questionnaires. Data were collected on May 21st and May 22nd 2015 by 30 data collectors handpicked by the Qatar Red Crescent (QRC) and the World Health Organization (WHO). Data collectors traveled to houses and internally displaced person (IDP) camps in 4 North Syrian governorates: Aleppo, Idleb, Hamah, and Lattakia. Data collectors gathered data from the children directly unless they were too young to speak.

The data is in Excel format. The original dataset contains 3 sheets (1 raw data file and 2 readmes). The original dataset contains 1181 rows and 42 columns (1002 rows after removing ineligible participants). Each row represents a single Syrian child, and each column represents a variable measuring traits of the child. The original .xslx file obtained from Data Dryad is 204 Kb.

##### What the original authors did with the data:
The authors compiled data to determine what proportion of this randomized population had inadequate health outcomes. They found that of the 1001 children included in their study, 20% were displaced to IDP camps; 9% did not have access to clean drinking water; 15% did not have access to appropriate sanitation; 15% did not have access to nutrition; 32% suffered from malnutrition; 51% of school-aged children were not in school; 64% could not access health care providers; 34% had unknown vaccination status, and among the 64% that were vaccinated, 43% were not up to date.

They also conducted chi-squared analyses to determine if certain subsets of the population were more at risk of subpar health and education than others. They found that "children in Idleb and Lattakia were at greater risk of having unmet public health needs", and "younger children were at greater risk of having an incomplete vaccination state".

##### What _YOU_ did with the data and how you did it:
I created novel graphs depicting some of the descriptive data. I also ran various chi-squared analyses, using predictors such as age, gender, and governorate, and response variables such as access to safe water, signs of clinical nutrition, whether or not they're in school, and access to a clinical pediatric healthcare provider, to determine if certain sub-populations are more at risk than others. My analysis consists of similar predictors and response variables as the chi-squared analyses conducted by Elsafti et al. I initially wanted to run general linear models but could not since my response variables are categorical.

### Results and conclusions
My results are consistent with what the original authors concluded. My chi-squared analyses depicted that although age and gender are not significant predictors of certain health outcomes, the governorate a child lives in is a significant predictor. Specifically, the governorate resided in significantly predicts whether or not a child has access to clean water (p=1.003e-13), whether or not a child shows clinical signs of malnutrition (p < 2.2e-16), whether or not they're receiving education (p < 2.2e-16), and whether or not they have access to a pediatric healthcare provider (p = 2.859e-16). Below are two plots that exemplify this.

![healthcareAccess]

![Malnutrition]

These data can be used to guide relief efforts and support different regions with what they need, which can provide more pragmatic assistance. Additionally, more selective relief can save time and resources.

## References

Elsafti AM, van Berlaer G, Al Safadi M, Debacker M, Buyl R, Redwan A, Hubloue I (2016) Children in the Syrian Civil War: the Familial, Educational, and Public Health Impact of Ongoing Violence. Disaster Medicine and Public Health Preparedness 10(06): 874-882. <https://doi.org/10.1017/dmp.2016.165>

Elsafti AM, van Berlaer G, Al Safadi M, Debacker M, Buyl R, Redwan A, Hubloue I (2016) Data from: Children in the Syrian civil war: the familial, educational, and public health impact of ongoing violence. Dryad Digital Repository. <https://doi.org/10.5061/dryad.73ff4>



