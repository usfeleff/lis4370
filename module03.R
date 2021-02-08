# Assignment #3 Data Frames
# The data set below is based on the presidential election during 2016, where it outlined the name of the candidate, the source of the poll (ABC vs, CBS). Discuss your result in your blog. Important note, I made up this data, so this data does not reflect what really happened in the election.

# the associated blog post for this file is at:
# https://thestorythusr.wordpress.com/2021/02/01/module-03-data-frames/
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC <- c(4, 62, 51, 21, 2, 14, 15)
CBS <- c(12, 75, 43, 19, 1, 21, 19)

# creating the frame
theDataFrame <- data.frame (
  candidate = Name,
  abc = ABC,
  cbs = CBS
)


# basic characteristics
dim(theDataFrame)
str(theDataFrame)
summary(theDataFrame)
colnames(theDataFrame)

# sample entries -- first and last 6 entries, respectively
head(theDataFrame)
tail(theDataFrame)

# examining all data
#print(theDataFrame)
#View(theDataFrame)

# sorting
theDataFrame[order(theDataFrame$abc),]
theDataFrame[order(theDataFrame$cbs),]

# plotting with a library
library("ggplot2")

ggplot(theDataFrame, aes(x=factor(candidate), y=abc, fill=candidate)) +
  geom_bar(stat="identity") +
  labs(x="Candidate", y="Poll Count", title="ABC Poll")



ggplot(theDataFrame, aes(x=factor(candidate), y=cbs, fill=candidate)) +
  geom_bar(stat="identity") +
  labs(x="Candidate", y="Poll Count", title="CBS Poll")

