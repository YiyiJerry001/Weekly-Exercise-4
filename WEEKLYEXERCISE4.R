system("git branch --show-current")

olympics <- read_csv("Olympics.csv")

# (a) 
olympics <- olympics %>%
  mutate(total.medals = gold + silver + bronze)

# (b) 
gold_by_country <- olympics %>%
  group_by(country) %>%
  summarize(total_gold = sum(gold, na.rm = TRUE))

# (c) 
medals_by_year <- olympics %>%
  group_by(year) %>%
  summarize(total_medals = sum(total.medals, na.rm = TRUE))