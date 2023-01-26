pop <- read.csv("Edmonton.csv", header = TRUE)
attach(pop)
head(pop)
str(pop)
summary(pop)
min(Assessment)
max(Assessment)
mean(Assessment)
set.seed(123) #guarantee that the same random values are produced each time
my.sample <- sample(Assessment,10)
my.sample # shows the sampled values
mean(my.sample) # computes the sample mean

?sample

xbar <- c() # to initialize the object xbar
for (i in 1:10000)  # Number of simulations
{ 
  my.sample <- sample(Assessment,100)
  xbar[i] <- mean(my.sample)
}

hist(xbar)

