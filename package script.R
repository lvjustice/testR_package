#Step 0 create the folder using create_package
#see step_0  script

#step 1 load use this
library(usethis)

#step 2 set license
use_gpl3_license()

#step 3 edit description & specify imports (packages you need for your package)
use_package("dplyr", min_version = TRUE)
use_package("tidyr", min_version = TRUE)
use_pipe() #includes pipe in package
use_package_doc() #run before the next line
use_tibble() #allows you to use & create tibbles (i.e., not data.frames)


#step 4 write functions
use_r('logitfunctions') #creates an R script where the function can go

#write basic function and then use code -> extract function to get function
#once written code go to code -> get roxygen skeleton to write help info
#When done, go to build -> document
#then build -> load all

#step 5 include data
#create new script saved as name of dataset (see probs_data) and then SOURCE

#to include help page for data:
use_r('data')
#and add documentation (no skeleton available)
#When done, go to build -> document
#then build -> load all

#step 6 create vignette
use_vignette('log_odds', title = "How to calculate log odds")
#add in any instructions here then knit document
#if it doesn't knit then go to build -> clean & rebuild

#step 7 create packagedown website
use_pkgdown()
build_site()
library(pkgdown)



