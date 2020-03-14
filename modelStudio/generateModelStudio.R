#
# PART 1: Instace level

library(DALEX)
library(modelStudio)
library(randomForest)
library(rms)
library(gbm)

johny_d <- loadFromLocalRepo(md5hash = "e3596", 
                             repoDir = "./RData", value = TRUE)
henry <- loadFromLocalRepo(md5hash = "a6538", 
                           repoDir = "./RData", value = TRUE)

new_obs <- rbind(johny_d = johny_d, henry = henry)

# restore models for titanic

titanic_lmr_v6 <- loadFromLocalRepo(md5hash = "51c50", 
                                    repoDir = "./RData", value = TRUE)
ms <- modelStudio(titanic_lmr_v6, new_obs)
r2d3::save_d3_html(ms, file = "titanic_lmr_v6.html", selfcontained = TRUE, 
                   title = "modelStudio for titanic_lmr_v6 and titanic")

titanic_rf_v3 <- loadFromLocalRepo(md5hash = "0e5d2", 
                                   repoDir = "./RData", value = TRUE)
ms <- modelStudio(titanic_rf_v3, new_obs)
r2d3::save_d3_html(ms, file = "titanic_rf_v3.html", selfcontained = TRUE, 
                   title = "modelStudio for titanic_rf_v3 and titanic")

titanic_gbm_v6 <- loadFromLocalRepo(md5hash = "3d514", 
                                    repoDir = "./RData", value = TRUE)
ms <- modelStudio(titanic_gbm_v6, new_obs)
r2d3::save_d3_html(ms, file = "titanic_gbm_v6.html", selfcontained = TRUE, 
                   title = "modelStudio for titanic_gbm_v6 and titanic")

titanic_rf_v6 <- loadFromLocalRepo(md5hash = "9b971",
                                   repoDir = "./RData", value = TRUE)
ms <- modelStudio(titanic_rf_v6, new_obs)
r2d3::save_d3_html(ms, file = "titanic_rf_v6.html", selfcontained = TRUE, 
                   title = "modelStudio for titanic_rf_v6 and titanic")


