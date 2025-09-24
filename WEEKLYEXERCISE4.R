system("git branch --show-current")
olympics <- read_csv("Olympics.csv")

# (a) 新变量 total.medals
olympics <- olympics %>%
  mutate(total.medals = gold + silver + bronze)

# (b) 每个国家金牌总数
gold_by_country <- olympics %>%
  group_by(country) %>%
  summarize(total_gold = sum(gold, na.rm = TRUE))

# (c) 每年总奖牌数
medals_by_year <- olympics %>%
  group_by(year) %>%
  summarize(total_medals = sum(total.medals, na.rm = TRUE))