xtset CompID Year
xi i.Year
xtabond2 Ln_Exports L.Ln_Exports ArcSine_VAperEmp LEAN Ln_RDSpend NewProductIndicator1 CollabRD Ln_Wages Ln_Training ExportPromo OSCBI Age Ln_Sales _I*, gmm(L.Ln_Exports ArcSine_VAperEmp LEAN Ln_RDSpend NewProductIndicator1 CollabRD Ln_Wages Ln_Training ExportPromo OSCBI Ln_Sales, lag(2 .)) iv(_I*) twostep robust nodiffsargan orthog small
testparm _I*
xtabond2 Ln_Markets L.Ln_Markets ArcSine_VAperEmp LEAN Ln_RDSpend NewProductIndicator1 CollabRD Ln_Wages Ln_Training ExportPromo OSCBI Age Ln_Sales, gmm(L.Ln_Markets ArcSine_VAperEmp LEAN Ln_RDSpend NewProductIndicator1 CollabRD Ln_Wages Ln_Training ExportPromo OSCBI Ln_Sales, lag(2 .)) twostep robust nodiffsargan orthog small