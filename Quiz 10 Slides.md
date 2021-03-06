

Quiz 10 Slides
========================================================
author: Bella Colpo
date: June 1, 2018
autosize: true

My Research Question:
========================================================


"How are certain water quality (such as pH) factors different among three locations in the Puget Sound?"

About the Data: Showing the Data
========================================================
- Washington Department of Ecology <https://github.com/fish497-2018/Bella_H20Quality/blob/master/Plot/pH_by_depth.jpg>

- Water quality indicators during the summer of 2016


How I Approached the Question
========================================================
- Pulled data from three locations: 
    - Port Townsend
    - Elliot Bay 
    - Puget Sound Basin

Slide With Plot
========================================================
This is my plot I created last week with the different water quality factors represented ina bar graph and the image that I saved it as.

barplot.jpg

Slide with New Changes
========================================================
Here I put the full_data table with all of the water quality factors into columns using the dissolved oxygen variables.

full_data %>% 
  spread(location, dissolved.oxygen..m.l..raw) %>% 
  gather(year, dissolved.oxygen..m.l.raw, '5.5':'8.6', na.rm = TRUE)

Slide With Code
========================================================
Here I added the code I used to generate the averages of each location.

aves <- full_data %>% 
  group_by(location) %>% 
  summarise(pH = mean(pH))
