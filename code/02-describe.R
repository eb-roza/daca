#####################################################################################################

# Title: Describe
# Last Updated: 07/25/2022
# Author: EDB

#####################################################################################################

# Description: Describe and explore the data
# Notes:
# Warnings:

#####################################################################################################


##### Approved Applications per Population #####

d = dist(cln_daca$approved_per_pop)
mds = cmdscale(d, k=2, eig=T)
stress_approved_per_pop <- calc_stress(d, mds$points)

# extract the x and y coordinates from the MDS
MDS_xy <- data.frame(mds$points)  

# add color variables needed to the MDS dataframe
MDS_xy$lawsuit <- cln_daca$lawsuit 

p_approval_by_lawsuit <- MDS_xy %>% 
  ggplot(aes(X1, X2, color = lawsuit)) +
  geom_point() +
  ggtitle("Difference by Lawsuit Status")


##### Percent Approved #####

# percent approved
d = dist(cln_daca$perc_approved)
mds = cmdscale(d, k=2, eig=T)
stress_perc_approved <- calc_stress(d, mds$points)

# extract the x and y coordinates from the MDS
MDS_xy <- data.frame(mds$points)  

# add color variables needed to the MDS dataframe
MDS_xy$lawsuit <- cln_daca$lawsuit 

p_perc_approved_by_lawsuit <- MDS_xy %>% 
  ggplot(aes(X1, X2, color = lawsuit)) +
  geom_point() +
  ggtitle("Difference by Lawsuit Status")


##### Percent Approved per Minority#####

# approved applications per minority populations
d = dist(cln_daca$approv_per_min)
mds = cmdscale(d, k=2, eig=T)
stress_approve_per_min <- calc_stress(d, mds$points)

# extract the x and y coordinates from the MDS
MDS_xy <- data.frame(mds$points)  

# add color variables needed to the MDS dataframe
MDS_xy$lawsuit <- cln_daca$lawsuit 

p_min_approved_by_lawsuit <- MDS_xy %>% 
  ggplot(aes(X1, X2, color = lawsuit)) +
  geom_point() +
  ggtitle("Difference by Lawsuit Status")

