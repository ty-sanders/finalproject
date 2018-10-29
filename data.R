install.packages("UScensus2010")
library(UScensus2010)
install.packages("UScensus2010tract", repos="http://lakshmi.calit2.uci.edu/census2000/R/",type="source") 
##repos required, "UScensus2010tract" not recognized

##DC Census Tract Data: found in ?UScensus2010tract

data("district_of_columbia.tract10")


##Pull Center of tracts from Spacial Polygon Lists. Completed during 310 course office hours by ryantmoore.
center1 <- district_of_columbia.tract10@polygons[[1]]@labpt

coords1 <- district_of_columbia.tract10@polygons[[1]]@Polygons[[1]]@coords
coords1


##Open container for 179 centers. Completed during 310 course office hours by ryantmoore.
n_tract <- length(district_of_columbia.tract10)

centers <- matrix(NA, nrow = n_tract, ncol = 2)

for(i in 1:n_tract){
  
  this_center <- district_of_columbia.tract10@polygons[[i]]@labpt
  centers[i, ] <- this_center
}

for(i in 1:n_tract){
  
  this_center <- district_of_columbia.tract10@polygons[[i]]@labpt
  centers_flip[i, ] <- this_center
  
}

#Centers. Completed during 310 course office hours by ryantmoore.
centers

centers_df <- as.data.frame(centers)

colnames(centers_df) <- c("lon", "lat")
centers
