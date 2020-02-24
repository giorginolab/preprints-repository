# Rebuilding figure 9, panel 1 of paper Tormene, P., Giorgino, T.,
# Quaglini, S., Stefanelli, M., 2009. Matching incomplete time series
# with dynamic time warping: an algorithm and an application to
# post-stroke rehabilitation. Artif Intell Med 45, 11–34.

# Please cite the above paper and: Toni Giorgino (2009). Computing and
# Visualizing Dynamic Time Warping Alignments in R: The dtw Package. Journal of
# Statistical Software, 31(7), 1-24. URL www.jstatsoft.org/v31/i07/.

# Download and extract the dataset provided at
# http://www.labmedinfo.org/research/myheart/myheart.htm

# Algorithm:
#   Restrict to exercise i=1 (figure shows results for i=1..7)
#   For each combination s=1..4, j=1..6
#     Take all ordered pairs S_{sijk} S_{sijk'} with k!=k'
#       (since k=1..5, there are 5*5-5=20 pairs)
#       For f_true=2..100 step 2
#         Truncate the query timeseries S_{sijk} at f_true
#	        Compute [D,f_OE]=DTW(S_{sijk},S_{sijk'},partial=TRUE)
#	        Accumulate f_OE in a vector f_OE(s,j,f_true)
#   Display quartiles of f_OE by f_true


# Never go home without it
library(dtw)

# Set DC offset at time zero
st0<-function(df) {t( t(df)-df[1,]) }

# Initialize data frame (first row is spurious)
fOE<-data.frame(s=0,i=0,j=0,k=0,k1=0,ftrue=0,d=0,f=0)

i<-1
for (s in 1:4) {     
  for (j in 1:6) {   
    for (k in 1:5) {
      for (k1 in 1:5) {
        if(k==k1) {
            next
        }
        for (ftrue in seq(2,100,by=2)) {
          dI<-as.matrix(read.table(sprintf("dataset27-28Feb2008_Paolo_garment10_29sensori/%d_%d_%d_%d.dat",s,i,j,k)))
          dT<-as.matrix(read.table(sprintf("dataset27-28Feb2008_Paolo_garment10_29sensori/%d_%d_%d_%d.dat",s,i,j,k1)))
          dItrunc<-head(dI,floor(nrow(dI)*ftrue/100.0))  # Truncate input
          align<-dtw(st0(dItrunc),st0(dT),step=asymmetric,open.end=T)
          f<-100*align$jmin/align$M
          fOE<-rbind(fOE,c(s,i,j,k,k1,ftrue,align$normalizedDistance,f))
        }
      }
    }
    
  }
}

# Plot quartiles and medians
library(lattice)
bwplot(f~ftrue,data=fOE,hor=F,
       ylab="Fraction of reference prefix matched by DTW-OE",
       par.settings = list(plot.symbol = list(col = "transparent")))

