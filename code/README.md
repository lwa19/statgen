# Code

Save command-line scripts and shared R code here.

# Figure 5.1 Coin Flipping
x<-5 # determines observed trials number
n<-30 # total number of trials
theta<-seq(0.1,0.9,by=0.05) # range of theta values
log_lh<-c() # loglikelihood function
num<-length(theta) # number of elements in theta
for (i in 1:num){
  log_lh[i]<--2*log(dbinom(x,n,theta[i]))
}

min_lh<-min(log_lh) # identify minimum loglikelihood
print(min_lh)
min_theta<-theta[log_lh==min_lh] # identify theta for minimum loglikelihood
print(c(min_lh,min_theta))

plot(theta,log_lh,type='l',xlab="Theta",ylab="-2loglikelihood",axes=FALSE) # plot
axis(side=1,at=seq(0,1,by=0.2))
axis(side=2,at=seq(0,100,by=10))
abline(h=min_lh,v=min_theta,lty=2)
