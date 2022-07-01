#Programming in R for case 1-
library('ggplot2')
k2 = qgamma(0.05,16,3.6)
k2
n = 16
theta_1 = seq(from=3.7, by=0.1, length.out=30)
theta_1
power_1 = mat.or.vec(30,1)
for(i in 1:30){
  power_1[i] = pgamma(k2, theta_1[i])}
power_1
Table = data.frame(theta_1,power_1)
Table
View(Table)
ggplot(data=Table,mapping=aes(x=theta_1,y=power_1))+geom_point()+geom_line()
data.frame(theta_1)
data.frame(power_1)



#Programming in R for case 2-
library('ggplot2')
k3 = qgamma(0.95,16,3.6)
k3
n = 16
theta_2 = seq(from=0.5, by=0.1, length.out=30)
theta_2
power_2 = mat.or.vec(30,1)
for(i in 1:30){
  power_2[i]=1-pgamma(k3, theta_2[i])}
power_2
Table_2 = data.frame(theta_2,power_2)
Table_2
View(Table_2)
ggplot(data=Table_2,mapping=aes(x=theta_2,y=power_2))+geom_point()+geom_line()
data.frame(theta_2)
data.frame(power_2)


