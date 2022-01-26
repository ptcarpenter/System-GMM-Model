xtset CompID Year
xtreg Ln_Exports ArcSine_VAperEmp LEAN Ln_RDSpend NewProductIndicator1 CollabRD Ln_Wages ExportPromo OSCBI Age Ln_Sales i.Year, fe
estimates store fixed
xtreg Ln_Exports ArcSine_VAperEmp LEAN Ln_RDSpend NewProductIndicator1 CollabRD Ln_Wages ExportPromo OSCBI Age Ln_Sales i.Year, re
estimates store random
hausman fixed random, sigmamore
xtreg Ln_Exports ArcSine_VAperEmp LEAN Ln_RDSpend NewProductIndicator1 CollabRD Ln_Wages ExportPromo Age OSCBI Ln_Sales i.Year, fe vce(cluster CompID)
testparm i.Year