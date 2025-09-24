<<<<<<< HEAD

# (a) 
delegation_1992 <- olympics %>%
  filter(year == 1992) %>%
  select(country, athletes) %>%
  arrange(desc(athletes))

# (b)
selected_countries <- c("United States", "France", "Germany", "Russia", "China")

p <- ggplot(
  data = filter(olympics, country %in% selected_countries),
  aes(x = year, y = gold, color = country)
) +
  geom_line() +
  geom_point() +
  labs(title = "Gold Medals Over Time (Selected Countries)",
       x = "Year", y = "Gold Medals")
print(p)

ggsave("gold_medals_over_time.png", plot = p, width = 8, height = 6, dpi = 300)
=======
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
>>>>>>> DEV
