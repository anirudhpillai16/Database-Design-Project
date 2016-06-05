library(dbConnect)
library(ggmap)
library(ggplot2)
library(maps)
mydb = dbConnect(MySQL(), user='sid', password='saibaba', 
                 dbname='Instabook', host='localhost')
dbListTables(mydb)
rs = dbSendQuery(mydb, "select *from customer")
data = fetch(rs, n=-1)
cities=data[5]
a=unique(cities,incomparables = FALSE)
a=geocode(a$city)
latitude<-a$lat
longitude<-a$lon
map("world","usa",fill = TRUE,col="yellow2",bg="lightblue", ylim=c(25, 49), mar=c(0,5,5,3))
points(longitude,latitude, col="red", pch=16)

ps = dbSendQuery(mydb, "SELECT edition,count(edition) from book
GROUP BY edition")
data2=fetch(ps,n=-1)
ts=dbSendQuery(mydb, "SELECT state, COUNT(state)AS Number_of_Customers FROM Customer GROUP BY state;")
data3=fetch()