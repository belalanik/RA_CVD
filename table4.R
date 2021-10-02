setwd("~/GitHub/RA_CVD")

library(tableone)
library(survey)
library(Publish)

load("analytic.RData")

# Design set up
dat.full$miss <- 1
dat.full$miss[dat.full$id %in% dat.no.miss2$id] <- 0
w.design0 <- svydesign(strata = ~strata, id = ~psu, weights = ~survey.weight, 
                       data = dat.full, nest = TRUE)
w.design <- subset(w.design0, miss == 0)

# Overall
fit.adj.RD <- svyglm(I(cvd == "Yes") ~ rheumatoid*year1 + age.cat +  sex + education + race + 
                       marital + income + born + bmi + diet + smoking + physical.activity + 
                       htn + diabetes + history + medical.access, 
                     design = w.design, family = gaussian("identity"))
publish(fit.adj.RD)


# 1999-2006
fit.eff1.RD <- svyglm(I(cvd == "Yes") ~ rheumatoid * age.cat +  sex + education + race + 
                        marital + income + born + bmi + diet + smoking + physical.activity + 
                        htn + diabetes +  history + medical.access, 
                      design = subset(w.design, year1 == "1999-2006"), 
                      family = gaussian("identity"))
publish(fit.eff1.RD)


# 2007-2012
fit.eff2.RD <- svyglm(I(cvd == "Yes") ~ rheumatoid * age.cat +  sex + education + race + 
                        marital + income + born + bmi + diet + smoking + physical.activity + 
                        htn + diabetes +  history + medical.access, 
                      design = subset(w.design, year1 == "2007-2012"), 
                      family = gaussian("identity"))
publish(fit.eff2.RD)


# 2013-2018
fit.eff3.RD <- svyglm(I(cvd == "Yes") ~ rheumatoid * age.cat +  sex + education + race + 
                        marital + income + born + bmi + diet + smoking + physical.activity + 
                        htn + diabetes +  history + medical.access, 
                      design = subset(w.design, year1 == "2013-2018"), 
                      family = gaussian("identity"))
publish(fit.eff3.RD)
