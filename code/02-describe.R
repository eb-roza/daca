#####################################################################################################

# Title: Describe
# Last Updated: 07/25/2022
# Author: EDB

#####################################################################################################

# Description: Describe and explore the data
# Notes:
# Warnings:

#####################################################################################################


##### 01. Conduct a metric MDS with 2 levels #####

# percent approved
d_perc_approved2 = dist(cln_daca$perc_approved)
mds_perc_approved2 = cmdscale(d_perc_approved2, k=2, eig=T)
stress_perc_approved2 = calc_stress(d_perc_approved2, mds_perc_approved2$points)


# approved applications per minority populations
d_approv_per_min = dist(cln_daca$approv_per_min)
mds_approv_per_min = cmdscale(d_approv_per_min, k=2, eig=T)
stress_approve_per_minority2 <- calc_stress(d_approv_per_min, mds_approv_per_min$points)

# minority 
d_minority = dist(cln_daca$min_per14)
mds_minority = cmdscale(d_minority, k=2, eig=T)
stress_per_minority2 <- calc_stress(d_minority, mds_minority$points)


##### 01. Conduct a metric MDS with 3 levels #####

# percent approved
d_perc_approved3 = dist(cln_daca$perc_approved)
mds_perc_approved3 = cmdscale(d_perc_approved3, k=3, eig=T)
stress_perc_approved3 = calc_stress(d_perc_approved3, mds_perc_approved3$points)


# approved applications per minority populations
d_approv_per_min = dist(cln_daca$approv_per_min)
mds_approv_per_min = cmdscale(d_approv_per_min, k=2, eig=T)
stress_approve_per_minority2 <- calc_stress(d_approv_per_min, mds_approv_per_min$points)

# minority 
d_minority = dist(cln_daca$min_per14)
mds_minority = cmdscale(d_minority, k=2, eig=T)
stress_per_minority2 <- calc_stress(d_minority, mds_minority$points)


##### 99: Not used #####

# approved applications per populations
d = dist(cln_daca$approved_per_pop)
mds = cmdscale(d, k=3, eig=T)
calc_stress(d, mds$points)

plot(mds$points, type="n")
text(mds$points, as.character(cln_daca$state),col=as.numeric(as.factor(cln_daca$lawsuit))+2)




