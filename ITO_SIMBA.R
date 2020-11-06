# ITO SIMBA
# subset of ITO_Qik2020 project

# Contributors:
# The following includes code and analysis for Sea-Ice Mass Balance Analysis (SIMBA)

#packages:
require(tidyverse)

simba <- read.csv("SIMBA/uit0201td_2020-11-04_14-21-24.csv")

dim(simba)
range(simba$IridDate) # first day of deployment was Feb 26 2020, seems like last day of SIMBA was June 2 2020
simba <- simba[134:1102,]  # remove the earlier data 1:133 includes data from before the deployment

image(simba[,22:309])

simba.mat <- matrix(simba[,22:309])
