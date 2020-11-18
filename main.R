# =============================================================================

# 
R.version.string
#   "R version 4.0.3 (2020-10-10)"
#
# =============================================================================================

wk.dir <- getwd() #
wk.dir

# =============================================================================
# --- project goal and overview ---

# This project aims to asses variance of birth outcomes between four 
# different size groups of British Columbian hospitals. 

# =============================================================================
# ---- libraries ----

# all code should run using base R only 

# =============================================================================
# --- folder management ---

# store names of the folders in an object
folder.names <- c("1.data.clean", "2.boxplots", "3.statanalysis")
# and make the folders if they don't exit yet. No need to understand this now
for(i in 1:length(folder.names)){ 
  if(file.exists(folder.names[i]) == FALSE){
    dir.create(folder.names[i])
  } 
}

path.data <- paste(wk.dir, "/", folder.names[1], "/", sep = "")
path.boxplots <- paste(wk.dir, "/", folder.names[2], "/", sep = "")
path.statanalysis <- paste(wk.dir, "/", folder.names[3], "/", sep = "")

# =============================================================================
# --- run scripts ---

