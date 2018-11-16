#data structure in R
#vectors ----
x=1:10
x

(x1=1:20)
(x2=c(1,2,3,4,5))
class(x2)
x3=c('a','abc')
class(x3)
(x4=letters[10:1])
LETTERS[1:26]
(x3b=c('a','Henry','4'))
class(x3b)
(x5=c(T,FALSE,T,TRUE,F))
class(x5)
class(c(3,5))
x6=c(3L,5L)
class(x6)
(x6b=c(1,'a',T,4L)) 
(x7=seq(0,100, by=3.3))
?seq
(seq(0,100,3))
ls()
seq(to=100,from=0,by=3)
length(x7)
x7[3] #shows the value at specific posn
x7[10:20]
x7[c(4,8)]
x7[-2]#removes 2nd elemet
x7[-c(1:10,15:20)]#removes certain elements
#values b/w 30 & 40
x7
x7[x7>30 & x7 < 40]
x7[-(length(x7)-1)]
(x7=c(x7,x2))
sort(x7)
#4- creates bookmarks


(x8=sample(1:50))
sort(x8)
sort(x8[-c(1,2)])
sort(x8, decreasing=T)
rev(x8)
#matrix ----
sum(x8[x8 > 30 & x8 < 40])
x8[2]
x8[2]=99
x8[2:10]=99
x8
x8[x8 > 30 & x8 < 40]=999
x8#dataframe ----
x9=x8[1:4]; x9 #truncate 1st4 elements

1:5
?length.out()

plot(x9)
(x=seq(1,5, length.out=15)) #partitioning value in 15 parts

#factors ----
#normaldistribution and histogram
x=NULL
?distribution
?rnorm
(x=rnorm(100000))
plot(density(x))
abline (v=c(-3,0,3))
mean(x)
(x1=rnorm(100000, mean=50, sd=5))
plot(density(x1))
abline(v=mean(x1),h=0.04)
hist(x1)
hist(x1, freq=F)
lines(density(x1), col=2)

#matrix
100:111
length(100:111)
(m1=matrix(100:111, nrow=4))
(m2=matrix(100:111, ncol=3, byrow=T))
(x=101:124)
(length(x))
matrix(x,ncol=6)
class(m1)
attributes(m1)
dim(m1)
#access elementsof matrix
m1[1, ]
m1[ ,-2]
m1
m1[1,2:3]
m1[c(1,3),]
m1[,-c(1,3)]
m1[m1 > 105 & m1 < 108]

#names of rows and columns
m1
paste('c','d', sep='-')
paste('c',1:100,sep='-')  
paste('c',1:3, sep='-')#concatinate
(colnames(m1)=paste('c',1:3, sep='-'))
m1
(rownames(m1)=paste('r',1:4, sep='-'))
m1
attributes(m1)
m1[c('r-1','r-2'), c('c-1','c-2')]
m1

#modify vector
m2
m2[2,2]
m2
m2[2,2]=10
m2
m1
rbind(m2, c(50,60,70))
cbind(m2, c(21,22,21,21))
rbind(m2,m2)

#row and col summary
m1
colSums(m1)
rowMeans(m1)
t(m1)#transpose
sweep(m1, MARGIN = 1, STATS = c(2,3,4,5), FUN = '+')
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN = '*')

#addmargin
m1
?addmargins
addmargins(m1,margin=1,sum)#colwise function
addmargins(m1,margin=2,mean)#rowwise
