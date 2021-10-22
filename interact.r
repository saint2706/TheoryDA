library(plotly)
library(htmlwidgets)

df <- read.csv("us-marriages-divorces-1867-2014.csv")

years <- as.double(df$Year)
marriages <- as.double(df$Marriages)
divorces <- as.double(df$Divorces)

p <- plot_ly(x = years, y = marriages, type = "scatter",
mode = "lines", fill = "tonexty", name = "Marriages",
line = list(color = "green"), fillcolor = "rgba(0,255,0,0.5)")
p <- add_trace(p, x = years, y = divorces, type = "scatter",
mode = "lines", fill = "tozeroy", name = "Divorces",
line = list(color = "blue"), fillcolor = "rgba(0,0,255,0.5)")
p
saveWidget(p, file = paste0(getwd(), "/HtmlWidget/html.html"))