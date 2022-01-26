xtset CompID Year
xtreg Ln_Exports ArcSine_VAperEmp LEAN Ln_RDSpend NewProductIndicator1 CollabRD Ln_Wages Ln_Training ExportPromo OSCBI Age Ln_Sales i.Year, fe vce(cluster CompID)
xtreg Ln_Markets ArcSine_VAperEmp LEAN Ln_RDSpend NewProductIndicator1 CollabRD Ln_Wages Ln_Training ExportPromo OSCBI Age Ln_Sales i.Year, fe vce(cluster CompID)