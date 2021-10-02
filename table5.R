# Design set up
dat.full$miss <- 1
dat.full$miss[dat.full$id %in% dat.no.miss2$id] <- 0
w.design0 <- svydesign(strata = ~strata, id = ~psu, weights = ~survey.weight, 
                       data = dat.full, nest = TRUE)
w.design <- subset(w.design0, miss == 0)


## 1999-2006: Overall
tab1 <- svyCreateTableOne(vars = "cvd", strata = "rheumatoid", 
                          data = subset(w.design, year1 == "1999-2006"), test = F)
print(tab1, showAllLevels = T, catDigits = 2, format = "p", smd = F)

## 1999-2006: age 20-49 years
tab1 <- svyCreateTableOne(vars = "cvd", strata = "rheumatoid", test = F, 
                          data = subset(w.design, year1 == "1999-2006" & age.cat=="20-49"))
print(tab1, showAllLevels = T, catDigits = 2, format = "p", smd = F)

## 1999-2006: age 50-79 years
tab1 <- svyCreateTableOne(vars = "cvd", strata = "rheumatoid", test = F,
                          data = subset(w.design, year1 == "1999-2006" & age.cat=="50-79"))
print(tab1, showAllLevels = T, catDigits = 2, format = "p", smd = F)

## 1999-2006: age 80+ years
tab1 <- svyCreateTableOne(vars = "cvd", strata = "rheumatoid", test = F,
                          data = subset(w.design, year1 == "1999-2006" & age.cat=="80+"))
print(tab1, showAllLevels = T, catDigits = 2, format = "p", smd = F)



## 2007-2012: Overall
tab1 <- svyCreateTableOne(vars = "cvd", strata = "rheumatoid", 
                          data = subset(w.design, year1 == "2007-2012"), test = F)
print(tab1, showAllLevels = T, catDigits = 2, format = "p", smd = F)

## 2007-2012: age 20-49 years
tab1 <- svyCreateTableOne(vars = "cvd", strata = "rheumatoid", test = F, 
                          data = subset(w.design, year1 == "2007-2012" & age.cat=="20-49"))
print(tab1, showAllLevels = T, catDigits = 2, format = "p", smd = F)

## 2007-2012: age 50-79 years
tab1 <- svyCreateTableOne(vars = "cvd", strata = "rheumatoid", test = F, 
                          data = subset(w.design, year1 == "2007-2012" & age.cat=="50-79"))
print(tab1, showAllLevels = T, catDigits = 2, format = "p", smd = F)

## 2007-2012: age 80+ years
tab1 <- svyCreateTableOne(vars = "cvd", strata = "rheumatoid", test = F, 
                          data = subset(w.design, year1 == "2007-2012" & age.cat=="80+"))
print(tab1, showAllLevels = T, catDigits = 2, format = "p", smd = F)



## 2013-2018: Overall
tab1 <- svyCreateTableOne(vars = "cvd", strata = "rheumatoid", 
                          data = subset(w.design, year1 == "2013-2018"), test = F)
print(tab1, showAllLevels = T, catDigits = 2, format = "p", smd = F)

## 2013-2018: age 20-49 years
tab1 <- svyCreateTableOne(vars = "cvd", strata = "rheumatoid", test = F, 
                          data = subset(w.design, year1 == "2013-2018" & age.cat=="20-49"))
print(tab1, showAllLevels = T, catDigits = 2, format = "p", smd = F)

## 2013-2018: age 50-79 years
tab1 <- svyCreateTableOne(vars = "cvd", strata = "rheumatoid", test = F, 
                          data = subset(w.design, year1 == "2013-2018" & age.cat=="50-79"))
print(tab1, showAllLevels = T, catDigits = 2, format = "p", smd = F)

## 2013-2018: age 80+ years
tab1 <- svyCreateTableOne(vars = "cvd", strata = "rheumatoid", test = F, 
                          data = subset(w.design, year1 == "2013-2018" & age.cat=="80+"))
print(tab1, showAllLevels = T, catDigits = 2, format = "p", smd = F)