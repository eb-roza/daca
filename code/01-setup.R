#####################################################################################################

# Title: Setup
# Last Updated: 07/25/2022
# Author: EDB

#####################################################################################################

# Description: Environment configuration
# Notes:
# Warnings:

#####################################################################################################

##### a. Define functions #####

# kruskall stress
calc_stress = function(dist, mdspts) {
  dist2 = dist(mdspts)
  s2 = sum((dist-dist2)^2)/sum(dist^2)
  sqrt(s2)
}

##### 01. Load libraries #####

library(tidyverse)
library(janitor)
library(MASS)

##### 02. Read input #####

df_daca <- read.csv("~/Code/daca/data/DACA.csv") %>% 
  clean_names()

##### 03. Clean data #####


cln_daca <- df_daca %>% 
  mutate(perc_approve_init = approved_init/approve_total,
         perc_approve_renew = approved_renew/approve_total,
         perc_approved = approve_total/accept_total,
         approv_per_min = approve_total*min_per14) 
