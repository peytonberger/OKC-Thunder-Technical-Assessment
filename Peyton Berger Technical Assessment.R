#Peyton Berger Technical Assessment

#Uploading CSV File
Shots<-read.csv("~/Desktop/shots_data.csv")

#Two Teams
Shots_A <- Shots[Shots$team == 'Team A',1]
Shots_B <- Shots[Shots$team == 'Team B',1]

#Corner 3 Shot Team A
Shots_C3A <- Shots_A
filter((Shots$x <= 22 & Shots$y <= 7.8) & (Shots$x >= -22 & Shots$y <= 7.8))
sum(Shots_C3A$fgmade)

#Corner 3 Shot Team B
Shots_C3B <- Shots_B
filter((Shots$x >= 23.75 & Shots$y > 7.8) & (Shots$x <= -23.75 & Shots$y > 7.8))
sum(Shots_C3B$fgmade)


# This is as far as I could get in a hours time
