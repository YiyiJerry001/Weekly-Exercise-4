
# (a) 1992年运动员数最多的国家
delegation_1992 <- olympics %>%
  filter(year == 1992) %>%
  select(country, athletes) %>%
  arrange(desc(athletes))

# (b) 5个国家的金牌随时间变化
selected_countries <- c("United States", "France", "Germany", "Russia", "China")

ggplot(
  data = filter(olympics, country %in% selected_countries),
  aes(x = year, y = gold, color = country)
) +
  geom_line() +
  geom_point() +
  labs(title = "Gold Medals Over Time (Selected Countries)",
       x = "Year", y = "Gold Medals")