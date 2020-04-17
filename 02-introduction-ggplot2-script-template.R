##########################################################################################
########################## INTRODUCTION TO ggplot2 #######################################
##########################################################################################

### Your name: Madeline Greene


# Load ggplot2 library
library(ggplot2)
# If you will be loading other optional libraries, do so on the next line(s). No other libraries are required for this lab/assignment.



############################################
############## Exercise Set 1 ##############
############################################


################
# Question 1.1 #
################
plot1 <- ggplot(iris, aes(x = Petal.Length)) + 
  geom_histogram(color = "deeppink",
                 fill = "blanchedalmond" , bins=20) +
  theme_bw() + 
  labs(x= "Petal Length") 
ggsave("my_first_histogram.png", plot1, height= 4, width = 6)


############################################
############## Exercise Set 2 ##############
############################################


################
# Question 2.1 #
################
ggplot(iris, aes(x= Sepal.Length)) + 
  geom_density(aes(fill = Species), alpha = 0.6) + labs(y= "Density", x = "Sepal Length")

################
# Question 2.2 #
################
ggplot(iris, aes(x = Sepal.Length)) + 
  geom_density(aes(fill = Species), alpha = 0.6) + labs(y="Density", x = "Sepal Length")

################
# Question 2.3 #
################
ggplot(iris, aes(x = Sepal.Length)) + 
  geom_density(aes(fill = Species), alpha = 0.6) + 
  labs (x = "Sepal Length", y = "Density") +
  scale_fill_manual(values = c("lightpink", "lightgoldenrod1", "lightcyan"))

################
# Question 2.4 #
################
ggplot(iris, aes(x = Sepal.Length)) + 
  geom_density(aes(fill = Species), alpha = 0.6) + 
  labs (x = "Sepal Length", y = "Density") +
  scale_fill_manual(values = c("lightpink", "lightgoldenrod1", "lightcyan")) + 
  theme(legend.position = "bottom")

ggplot(iris, aes(x = Sepal.Length)) + 
  geom_density(aes(fill = Species), alpha = 0.6) + 
  labs (x = "Sepal Length", y = "Density") +
  scale_fill_manual(values = c("lightpink", "lightgoldenrod1", "lightcyan")) + 
  theme(legend.position = "top")

################
# Question 2.5 #
################
ggplot(iris, aes(x = Sepal.Length)) + 
  geom_density(aes(fill = Species), alpha = 0.6) + 
  labs (x = "Sepal Length", y = "Density") +
  scale_fill_manual(values = c("lightpink", "lightgoldenrod1", "lightcyan")) + 
  theme(legend.position = "top") + labs(fill= "Iris Species")

################
# Question 2.6 #
################
ggplot(iris, aes(x = Sepal.Length)) + 
  geom_density(aes(fill = Species), alpha = 0.6) +
  scale_fill_manual(values = c("blue", "pink", "yellow")) + labs( x = "Sepal Length", y = "Density")

############################################
############## Exercise Set 3 ##############
############################################




################
# Question 3.1 #
################
ggplot(iris, aes(x = Species , y = Petal.Length)) + 
  geom_boxplot(color = "skyblue", aes(fill = Species)) + labs(x = "Iris Species", y = "Iris Petal Length (cm)") + scale_fill_manual(values = c("red", "pink", "orange")) + labs(title = "Boxplot of iris species petal lengths") + theme_classic()


################
# Question 3.2 #
################
ggplot(iris, aes(x= Species, y = Petal.Length)) +
  geom_violin(aes(fill=Species)) +
  labs(x = "Iris Species", y = "Iris Petal Length (cm)") +theme_classic()+
  theme(legend.position = "none") + scale_fill_manual(values = c("orange", "pink", "red")) 


############################################
############## Exercise Set 4 ##############
############################################




################
# Question 4.1 #
################
ggplot(iris, aes(x = Species, y = Sepal.Length)) + 
  geom_jitter(color = "blue") + labs(y = "Sepal Length")
  
  
################
# Question 4.2 #
################
ggplot(iris, aes(x = Species, y = Sepal.Length)) +
  geom_jitter(size = 2) +labs(y = "Sepal Length")


ggplot(iris, aes(x = Species, y = Sepal.Length)) +
  geom_jitter(size = 0.1) +labs(y = "Sepal Length")


################
# Question 4.3 #
################
ggplot(iris, aes(x = Species, y = Sepal.Length)) +
  geom_jitter(aes(color = Species)) + labs(y = "Sepal Length")

################
# Question 4.4 #
################
ggplot(iris, aes(x = Species, y = Sepal.Length)) +
  geom_jitter(aes(color = Species)) +scale_color_manual(values = c("pink", "blue", "yellow")) + labs(y = "Sepal Length")

################
# Question 4.5 #
################
ggplot(iris, aes(x = Species, y = Sepal.Length)) + 
  geom_jitter(aes(shape = Species)) + labs( y = "Sepal Length")

############################################
############## Exercise Set 5 ##############
############################################


################
# Question 5.1 #
################
ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length)) +
  labs(x = "Sepal Width", y = "Sepal Length", title = "Relationship Between Sepal Width and Sepal Length") +
  geom_point(aes(color = Species)) 

## HINT: you can't color points by filling them! -spielman

################
# Question 5.2 #
################
ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length)) +
  labs(x = "Sepal Width", y = "Sepal Length", title = "Relationship Between Sepal Width and Sepal Length") +
  geom_point(aes(shape = Species))

################
# Question 5.3 #
################
ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length)) +
  labs(x = "Sepal Width", y = "Sepal Length", title = "Relationship Between Sepal Width and Sepal Length") + 
  geom_point(aes(size = Species))


## As a COMMENT below, answer: Which of the three scatterplots did you find most informative for viewing differences among species?
# Out of the three scatterplots, the most informative for viewing differences among species was viewing them by different colors. It was the easiest to see which color corresponded with what species along with it not being too confusing. It was very hard to tell the shape differences and the different sizes was not advised because the smaller shapes could be hidden behind the larger shapes. 












