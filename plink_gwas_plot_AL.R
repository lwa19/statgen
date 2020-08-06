m<-as.matrix(read.table("~/Desktop/statgen/hapmap1/ibd_view.mibs"))
mds<-cmdscale(as.dist(1-m))
k<-c(rep("green",45),rep("blue",44))
plot(mds,pch=20,col=k)

### annotations
# green plots represent Chinese individuals and blue plots represent Chinese individuals
# plot indicates that there are two distinct clusters in the data provided, which makes sense because
# they are two distinct populations/ethnicities