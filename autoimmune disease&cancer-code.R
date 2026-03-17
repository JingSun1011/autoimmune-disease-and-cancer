#################### Assessment of associations between prevalent AIDs and incident cancer ###############
##time-dependent CPH model
###both sex--overall.AID&cancer####
aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       #"Breast_cancer2",
       #"Cervix_uteri_cancer2",
       #"Corpus_uteri_cancer2",
       #"Ovary_cancer2",
       #'female.genital.cancer2',
       #'male.genital.cancer2',
       #"Prostate_cancer2",
       #"Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
       
)

covariates <- c("age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat +aspirin",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat +aspirin",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + hepatitis.BC",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + T2D.baseline + chronic_pancreatitis.baseline",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + sun.summ.win.average",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer+ processed_meat",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer"
)

formula_str <- paste0("Surv(tstart, tstop, endpt==1) ~ AID +", covariates)

result_data <- data.frame(
  outcome = numeric(0),
  time_id = numeric(0),
  case.0.0 = numeric(0),
  case.0.1 = numeric(0),
  case.1.0 = numeric(0),
  case.1.1 = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  HR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  PH.p = numeric(0),
  FDR = numeric(0),
  PRS = numeric(0),
  bonferroni = numeric(0),
  population = numeric(0),
  covariates_id = numeric(0),
  stringsAsFactors = FALSE
)
for (i in 1:22) {
  pbc <- tmerge(dd, dd, id=f.eid, endpt = event(Overall.cancer.excl_non_melanoma.time.censor, dd[,aa[i]]))
  pbc2 <- tmerge(pbc, data3, id=f.eid, AID = tdc(year, AID))
  outcome_id <- aa[i]
  time_id <- "Overall.cancer.excl_non_melanoma.time.censor"
  cox_formula <- as.formula(formula_str[i])
  fit <- coxph(cox_formula,
               data=pbc2)
  result <- data.frame(
    outcome = outcome_id,
    time_id = time_id,
    case.0 = table(dd$overall2.AID,dd[,aa[i]])['0','1'],
    control.0 = table(dd$overall2.AID,dd[,aa[i]])['0','0'],
    case.1 = table(dd$overall2.AID,dd[,aa[i]])['1','1'],
    control.1 = table(dd$overall2.AID,dd[,aa[i]])['1','0'],
    beta_perSD=coef(fit)[1],
    se=summary(fit)$coef[1,3],
    HR = exp(coef(fit)[1]),
    LCI = exp(confint(fit)[1, 1]),
    HCI = exp(confint(fit)[1, 2]),
    P = summary(fit)$coefficients[1, "Pr(>|z|)"],
    covariates_id <- covariates[i],
    stringsAsFactors = FALSE
  )
  result_data <- rbind(result_data, result) 
  
}

result_data$AID="overall"
result_data$population="Both sex"
result_data$'HR (95% CI)'<- with(result_data, sprintf("%.2f (%.2f-%.2f)", HR, LCI, HCI))
write.table(result_data, "combin_autoim_OS.baseline_cancer_time_dependent.csv", row.names=F, quote=F, sep=",")


###female--overall.AID&cancer####
aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       "Breast_cancer2",
       "Cervix_uteri_cancer2",
       "Corpus_uteri_cancer2",
       "Ovary_cancer2",
       'female.genital.cancer2',
       #'male.genital.cancer2',
       #"Prostate_cancer2",
       #"Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
       
)

covariates <- c("age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat +aspirin",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat +aspirin",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + hepatitis.BC",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + T2D.baseline + chronic_pancreatitis.baseline",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + sun.summ.win.average",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer+ processed_meat",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer"
)

formula_str <- paste0("Surv(tstart, tstop, endpt==1) ~ AID +", covariates)

result_data <- data.frame(
  outcome = numeric(0),
  time_id = numeric(0),
  case.0.0 = numeric(0),
  case.0.1 = numeric(0),
  case.1.0 = numeric(0),
  case.1.1 = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  HR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  PH.p = numeric(0),
  FDR = numeric(0),
  PRS = numeric(0),
  bonferroni = numeric(0),
  population = numeric(0),
  covariates_id = numeric(0),
  stringsAsFactors = FALSE
)
for (i in 1:27) {
  pbc <- tmerge(dd, dd, id=f.eid, endpt = event(Overall.cancer.excl_non_melanoma.time.censor, dd[,aa[i]]))
  pbc2 <- tmerge(pbc, data3, id=f.eid, AID = tdc(year, AID))
  
  outcome_id <- aa[i]
  time_id <- "Overall.cancer.excl_non_melanoma.time.censor"
  cox_formula <- as.formula(formula_str[i])
  fit <- coxph(cox_formula,
               data=pbc2)
  result <- data.frame(
    outcome = outcome_id,
    time_id = time_id,
    case.0 = table(dd$overall2.AID,dd[,aa[i]])['0','1'],
    control.0 = table(dd$overall2.AID,dd[,aa[i]])['0','0'],
    case.1 = table(dd$overall2.AID,dd[,aa[i]])['1','1'],
    control.1 = table(dd$overall2.AID,dd[,aa[i]])['1','0'],
    case = table(dd[,aa[i]])['1'],
    control = table(dd[,aa[i]])['0'],
    beta_perSD=coef(fit)[1],
    se=summary(fit)$coef[1,3],
    HR = exp(coef(fit)[1]),
    LCI = exp(confint(fit)[1, 1]),
    HCI = exp(confint(fit)[1, 2]),
    P = summary(fit)$coefficients[1, "Pr(>|z|)"],
    covariates_id <- covariates[i],
    stringsAsFactors = FALSE
  )
  result_data <- rbind(result_data, result) 
  
}

result_data$AID="overall"
result_data$population="female"
result_data$'HR (95% CI)'<- with(result_data, sprintf("%.2f (%.2f-%.2f)", HR, LCI, HCI))
write.table(result_data, "female.combin_autoim_OS.baseline_cancer_time_dependent.csv", row.names=F, quote=F, sep=",")


###male--overall.AID&cancer####
aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       # "Breast_cancer2",
       # "Cervix_uteri_cancer2",
       # "Corpus_uteri_cancer2",
       # "Ovary_cancer2",
       # 'female.genital.cancer2',
       'male.genital.cancer2',
       "Prostate_cancer2",
       "Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
       
)

covariates <- c("age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat +aspirin",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat +aspirin",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + hepatitis.BC",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + T2D.baseline + chronic_pancreatitis.baseline",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + sun.summ.win.average",
                # "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                # "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                # "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                # "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                # "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer+ processed_meat",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer"
)

formula_str <- paste0("Surv(tstart, tstop, endpt==1) ~ AID +", covariates)

result_data <- data.frame(
  outcome = numeric(0),
  time_id = numeric(0),
  case.0.0 = numeric(0),
  case.0.1 = numeric(0),
  case.1.0 = numeric(0),
  case.1.1 = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  HR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  PH.p = numeric(0),
  FDR = numeric(0),
  PRS = numeric(0),
  bonferroni = numeric(0),
  population = numeric(0),
  covariates_id = numeric(0),
  stringsAsFactors = FALSE
)
for (i in 1:25) {
  pbc <- tmerge(dd, dd, id=f.eid, endpt = event(Overall.cancer.excl_non_melanoma.time.censor, dd[,aa[i]]))
  pbc2 <- tmerge(pbc, data3, id=f.eid, AID = tdc(year, AID))
  
  outcome_id <- aa[i]
  time_id <- "Overall.cancer.excl_non_melanoma.time.censor"
  cox_formula <- as.formula(formula_str[i])
  fit <- coxph(cox_formula,
               data=pbc2)
  result <- data.frame(
    outcome = outcome_id,
    time_id = time_id,
    case.0 = table(dd$overall2.AID,dd[,aa[i]])['0','1'],
    control.0 = table(dd$overall2.AID,dd[,aa[i]])['0','0'],
    case.1 = table(dd$overall2.AID,dd[,aa[i]])['1','1'],
    control.1 = table(dd$overall2.AID,dd[,aa[i]])['1','0'],
    case = table(dd[,aa[i]])['1'],
    control = table(dd[,aa[i]])['0'],
    beta_perSD=coef(fit)[1],
    se=summary(fit)$coef[1,3],
    HR = exp(coef(fit)[1]),
    LCI = exp(confint(fit)[1, 1]),
    HCI = exp(confint(fit)[1, 2]),
    P = summary(fit)$coefficients[1, "Pr(>|z|)"],
    covariates_id <- covariates[i],
    stringsAsFactors = FALSE
  )
  result_data <- rbind(result_data, result) 
  
}

result_data$AID="overall"
result_data$population="male"
result_data$'HR (95% CI)'<- with(result_data, sprintf("%.2f (%.2f-%.2f)", HR, LCI, HCI))
write.table(result_data, "male.combin_autoim_OS.baseline_cancer_time_dependent.csv", row.names=F, quote=F, sep=",")

dat1=read.csv("combin_autoim_OS.baseline_cancer_time_dependent.csv",head=T)
dat2=read.csv("female.combin_autoim_OS.baseline_cancer_time_dependent.csv",head=T)
dat3=read.csv("male.combin_autoim_OS.baseline_cancer_time_dependent.csv",head=T)

totaldata=rbind(dat1,dat2,dat3)

totaldata$FDR.all<-p.adjust(totaldata$P,method='BH')
totaldata$bonferroni.all<-p.adjust(totaldata$P,method='bonferroni')
totaldata=totaldata[order(totaldata[,"FDR.all"]),]
write.table(totaldata, "all.time.dependent.cox.combin_autoim_OS.baseline_cancer.csv", row.names=F, quote=F, sep=",")



##################### Assessment of associations between genetic predisposition to AIDs and cancer ###############
###Construction of combined autoimmune disease polygenic risk scores using incidence as weight
#total
dat$combinwGRS=(4.04/100000)*dat$SLEwGRS_scale+(4.40/100000)*dat$MSwGRS_scale+(18.04/100000)*dat$T1DwGRS_scale+
  (15.7/100000)*dat$UCwGRS_scale+(10.2/100000)*dat$CDwGRS_scale+(23.59/100000)*dat$RAwGRS_scale
dat$combinwGRS_scale=scale(dat$combinwGRS)

save(dat, file="ukb.combinedwGRS.Rdata")

##male
dat$combinwGRS.male=(1.19/100000)*dat$SLEwGRS_scale+(3.08/100000)*dat$MSwGRS_scale+(18.85/100000)*dat$T1DwGRS_scale+
  (16.7/100000)*dat$UCwGRS_scale+(9.3/100000)*dat$CDwGRS_scale+(13.01/100000)*dat$RAwGRS_scale
dat$combinwGRS.male_scale=scale(dat$combinwGRS.male)

##female
dat$combinwGRS.female=(6.82/100000)*dat$SLEwGRS_scale+(5.75/100000)*dat$MSwGRS_scale+(17.21/100000)*dat$T1DwGRS_scale+
  (14.7/100000)*dat$UCwGRS_scale+(11.1/100000)*dat$CDwGRS_scale+(33.98/100000)*dat$RAwGRS_scale
dat$combinwGRS.female_scale=scale(dat$combinwGRS.female)



#CAIDPRS & cancer
##both sex
#COX model
library(survival)
library(survminer)
aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       #"Breast_cancer2",
       #"Cervix_uteri_cancer2",
       #"Corpus_uteri_cancer2",
       #"Ovary_cancer2",
       #'female.genital.cancer2',
       #'male.genital.cancer2',
       #"Prostate_cancer2",
       #"Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
)

result_data1 <- data.frame(
  outcome = numeric(0),
  time_id = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  HR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  PH.p = numeric(0),
  stringsAsFactors = FALSE
)

for (i in 1:22) {
  outcome_id <- aa[i]
  time_id <- "Overall.cancer.excl_non_melanoma.diag.birth.time.censor"
  res.cox <- coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~ combinwGRS_scale+age.rec+f.31.0.0+f.54.0.0+array+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10, data = dat)
  ph.cox <- coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~ combinwGRS_scale, data=dat)
  ph_test <- cox.zph(ph.cox)
  
  result <- data.frame(
    exposure = "combinwGRS_scale",
    outcome = outcome_id,
    time_id = time_id,
    case = summary(res.cox)$nevent,
    control = summary(res.cox)$n-summary(res.cox)$nevent,
    total = summary(res.cox)$n,
    beta_perSD=coef(res.cox)[1],
    se=summary(res.cox)$coef[1,3],
    HR = exp(coef(res.cox)[1]),
    LCI = exp(confint(res.cox)[1, 1]),
    HCI = exp(confint(res.cox)[1, 2]),
    P = summary(res.cox)$coefficients[1, "Pr(>|z|)"],
    PH.p=ph_test[["table"]][1,3],
    stringsAsFactors = FALSE
  )
  result_data1 <- rbind(result_data1, result) 
}

result_data1$'HR (95% CI)'<- with(result_data1, sprintf("%.2f (%.2f-%.2f)", HR, LCI, HCI))
result_data1$population="Both sex"

##female
#COX model
# library(survival)
# library(survminer)
dat=subset(merg,IS_baseline_use == 0&f.31.0.0=='0')##female

aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       "Breast_cancer2",
       "Cervix_uteri_cancer2",
       "Corpus_uteri_cancer2",
       "Ovary_cancer2",
       'female.genital.cancer2',
       #'male.genital.cancer2',
       #"Prostate_cancer2",
       #"Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
)

result_data2 <- data.frame(
  outcome = numeric(0),
  time_id = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  HR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  PH.p = numeric(0),
  stringsAsFactors = FALSE
)

for (i in 1:27) {
  outcome_id <- aa[i]
  time_id <- "Overall.cancer.excl_non_melanoma.diag.birth.time.censor"
  res.cox <- coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~ combinwGRS.female_scale+age.rec+f.54.0.0+array+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10, data = dat)
  ph.cox <- coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~ combinwGRS.female_scale, data=dat)
  ph_test <- cox.zph(ph.cox)
  
  result <- data.frame(
    exposure = "combinwGRS.female_scale",
    outcome = outcome_id,
    time_id = time_id,
    case = summary(res.cox)$nevent,
    control = summary(res.cox)$n-summary(res.cox)$nevent,
    total = summary(res.cox)$n,
    beta_perSD=coef(res.cox)[1],
    se=summary(res.cox)$coef[1,3],
    HR = exp(coef(res.cox)[1]),
    LCI = exp(confint(res.cox)[1, 1]),
    HCI = exp(confint(res.cox)[1, 2]),
    P = summary(res.cox)$coefficients[1, "Pr(>|z|)"],
    PH.p=ph_test[["table"]][1,3],
    stringsAsFactors = FALSE
  )
  result_data2 <- rbind(result_data2, result) 
}

result_data2$'HR (95% CI)'<- with(result_data2, sprintf("%.2f (%.2f-%.2f)", HR, LCI, HCI))
result_data2$population="Female"

##male
#COX model
# library(survival)
# library(survminer)
dat=subset(merg,IS_baseline_use == 0&f.31.0.0=='1')##male

aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       # "Breast_cancer2",
       # "Cervix_uteri_cancer2",
       # "Corpus_uteri_cancer2",
       # "Ovary_cancer2",
       # 'female.genital.cancer2',
       'male.genital.cancer2',
       "Prostate_cancer2",
       "Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
)

result_data3 <- data.frame(
  outcome = numeric(0),
  time_id = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  HR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  PH.p = numeric(0),
  stringsAsFactors = FALSE
)

for (i in 1:25) {
  outcome_id <- aa[i]
  time_id <- "Overall.cancer.excl_non_melanoma.diag.birth.time.censor"
  res.cox <- coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~ combinwGRS.male_scale+age.rec+f.54.0.0+array+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10, data = dat)
  ph.cox <- coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~ combinwGRS.male_scale, data=dat)
  ph_test <- cox.zph(ph.cox)
  
  result <- data.frame(
    exposure = "combinwGRS.male_scale",
    outcome = outcome_id,
    time_id = time_id,
    case = summary(res.cox)$nevent,
    control = summary(res.cox)$n-summary(res.cox)$nevent,
    total = summary(res.cox)$n,
    beta_perSD=coef(res.cox)[1],
    se=summary(res.cox)$coef[1,3],
    HR = exp(coef(res.cox)[1]),
    LCI = exp(confint(res.cox)[1, 1]),
    HCI = exp(confint(res.cox)[1, 2]),
    P = summary(res.cox)$coefficients[1, "Pr(>|z|)"],
    PH.p=ph_test[["table"]][1,3],
    stringsAsFactors = FALSE
  )
  result_data3 <- rbind(result_data3, result) 
}

result_data3$'HR (95% CI)'<- with(result_data3, sprintf("%.2f (%.2f-%.2f)", HR, LCI, HCI))
result_data3$population="Male"
result_data <- rbind(result_data1,result_data2,result_data3)
result_data$FDR.all<-p.adjust(result_data$P,method='BH')
result_data$bonferroni.all<-p.adjust(result_data$P,method='bonferroni')

write.table(result_data, "noISuse.CAIDPRS_cancer_adj_newcov.csv", row.names=F, quote=F, sep=",")






######################### Estimation of interaction between AID-PRS and cancer-PRS on cancer risk ##########################
###both sex
dat=merg
aa<- c("Anal_cancer2",
       "Anal_cancer2",
       #"Hodgkin_Disease_cancer2",
       #"Kidney_cancer2",
       #"LOAP_cancer2",
       #"LOAP_cancer2",
       #"LOAP_cancer2",
       "Lung_cancer2",
       #"Lymphoid_Leukaemia_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       #"Lymphoid_Leukaemia_cancer2",
       "NHL_cancer2",
       #"NHL_cancer2",
       "NHL_cancer2")


prs1<- c("SLEwGRS_scale",
         "UCwGRS_scale",
         #"SLEwGRS_scale",
         #"T1DwGRS_scale",
         #"CDwGRS_scale",
         #"T1DwGRS_scale",
         #"UCwGRS_scale",
         "SLEwGRS_scale",
         #"MSwGRS_scale",
         "SLEwGRS_scale",
         "T1DwGRS_scale",
         #"UCwGRS_scale",
         "combinwGRS_scale",
         #"SLEwGRS_scale",
         "UCwGRS_scale"
)
prs2<- c("anal.cancer.metawGRS",
         "anal.cancer.metawGRS",
         # "HodgkinwGRS",
         # "KidneywGRS",
         # "oral.cancer.metawGRS",
         # "oral.cancer.metawGRS",
         # "oral.cancer.metawGRS",
         "lungwGRS",
         # "Chronic_leukemiawGRS",
         "Chronic_leukemiawGRS",
         "Chronic_leukemiawGRS",
         # "Chronic_leukemiawGRS",
         "NHLwGRS",
         # "NHLwGRS",
         "NHLwGRS"
)

result_data <- data.frame(
  PRS1=numeric(0),
  PRS2=numeric(0),
  outcome = numeric(0),
  time_id = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  HR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  stringsAsFactors = FALSE
)
for (i in 1:7) {
  outcome_id <- aa[i]
  time_id <- "Overall.cancer.excl_non_melanoma.diag.birth.time.censor"
  
  res.cox=coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~dat[,prs1[i]]*scale(dat[,prs2[i]])+age.rec+f.31.0.0+f.54.0.0+array+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10, data = dat)
  result <- data.frame(
    PRS1=prs1[i],
    PRS2=prs2[i],
    outcome = outcome_id,
    time_id = time_id,
    case = summary(res.cox)$nevent,
    control = summary(res.cox)$n-summary(res.cox)$nevent,
    total = summary(res.cox)$n,
    beta_perSD=summary(res.cox)$coef[37,1],
    se=summary(res.cox)$coef[37,3],
    HR = exp(summary(res.cox)$coef[37]),
    LCI = exp(confint(res.cox)[37, 1]),
    HCI = exp(confint(res.cox)[37, 2]),
    P = summary(res.cox)$coefficients[37, "Pr(>|z|)"],
    stringsAsFactors = FALSE
  )
  result_data <- rbind(result_data, result) 
  
}
result_data$'HR (95% CI)'<- with(result_data, sprintf("%.2f (%.2f-%.2f)", HR, LCI, HCI))
result_data$population="Both sex"
write.table(result_data, "interaction_continuous.autoimmunePRS_cancerPRS_cancer_adj_array.csv", row.names=F, quote=F, sep=",")

###male
dat=subset(merg,f.31.0.0=='1')##male

aa<- c("Prostate_cancer2"
)

prs1<- c("SLEwGRS_scale.y")
prs2<- c("ProstatewGRS")

result_data <- data.frame(
  PRS1=numeric(0),
  PRS2=numeric(0),
  outcome = numeric(0),
  time_id = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  HR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  stringsAsFactors = FALSE
)
for (i in 1:1) {
  outcome_id <- aa[i]
  time_id <- "Overall.cancer.excl_non_melanoma.diag.birth.time.censor"
  
  res.cox=coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~dat[,prs1[i]]*scale(dat[,prs2[i]])+age.rec+f.54.0.0+array+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10, data = dat)
  result <- data.frame(
    PRS1=prs1[i],
    PRS2=prs2[i],
    outcome = outcome_id,
    time_id = time_id,
    case = summary(res.cox)$nevent,
    control = summary(res.cox)$n-summary(res.cox)$nevent,
    total = summary(res.cox)$n,
    beta_perSD=summary(res.cox)$coef[36,1],
    se=summary(res.cox)$coef[36,3],
    HR = exp(summary(res.cox)$coef[36]),
    LCI = exp(confint(res.cox)[36, 1]),
    HCI = exp(confint(res.cox)[36, 2]),
    P = summary(res.cox)$coefficients[36, "Pr(>|z|)"],
    stringsAsFactors = FALSE
  )
  result_data <- rbind(result_data, result) 
  
}
result_data$'HR (95% CI)'<- with(result_data, sprintf("%.2f (%.2f-%.2f)", HR, LCI, HCI))
result_data$population="Male"
write.table(result_data, "male.interaction_continuous.autoimmunePRS_cancerPRS.model1.cox.16autoimmune.cancer_adj.csv", row.names=F, quote=F, sep=",")


#################### Mediation analysis of biomarkers and immunosuppressant use on AIDs, AID-PRSs and cancer ############
#mediation loop AID----
library(mediation)
library(survival)
library(survminer)
##blood counts as M
merg$overall.AID.baseline=0
merg$overall.AID.baseline[merg$overall.AID == -1]=1
merg$overall.AID.baseline[merg$overall.AID == 1]=0
dt <- subset(merg,Overall.cancer != -1)

covariates1 <- c("age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer")
loop <- c("overall.AID.baseline") # X

# data1 <- read.csv("OS.cox.sig.mediator_sig.cancer.csv",head=T)
# data1 <- subset(data1, bonferroni < 0.05)
# data1 <- data1[c(1:3)]
# names(data1) <- c("M_id","outcome_id","time_id")
# data1$covariates <- 0
# data1$covariates[data1$outcome_id == "Overall.cancer2"] <- "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer"
# data1$covariates[data1$outcome_id == "Lung_cancer2"] <- "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer"
# data1$covariates[data1$outcome_id == "digestive.cancer2"] <- "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer+ processed_meat"
# data1$covariates[data1$outcome_id == "Liver_cancer2"] <- "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + hepatitis.BC"
# data1$covariates[data1$outcome_id == "urinary.cancer2"] <- "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer"
# data1$covariates[data1$outcome_id == "hematological.cancer2"] <- "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer"
# data1$covariates[data1$outcome_id == "Kidney_cancer2"] <- "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer"
# data1$covariates[data1$outcome_id == "Hodgkin_Disease_cancer2"] <- "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer"
# data1$covariates[data1$outcome_id == "NHL_cancer2"] <- "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer"
# data1$covariates[data1$outcome_id == "Oesophagus_cancer2"] <- "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat"
# 
# write.table(data1, "mediation_input_data_combin_autoim_OS.baseline.blood.counts.cancers.csv", row.names=F, quote=F, sep=",")
#
data1 <- read.csv("mediation_input_data_combin_autoim_OS.baseline.blood.counts.cancers.csv",header = T)

out <- data1$M_id
aa <- data1$outcome_id
tt <- data1$time_id
cov <- data1$covariates

result_data <- data.frame(
  outcome = numeric(0),
  Prop.Mediated=numeric(0),
  P.Mediated = numeric(0),
  stringsAsFactors = FALSE
)

for (i in 1:length(out)) {
  dt$status <- dt[,aa[i]]
  dt$time <- dt[,tt[i]]
  
  X <- loop[1] # x
  M<- out[i] # M
  covariates <- cov[i]
  #outcome <- c("status")
  
  #  x to M
  lm_mode <- as.formula(paste0(M, "~", X, "+", covariates1))
  if(M == "IS_baseline_use"){
    fit.mediator <- glm(lm_mode, data = dt)
  }else{fit.mediator <- lm(lm_mode, data = dt)}
  
  #summary(fit.mediator)
  surv_mode <- as.formula(paste0("Surv(time, status == 1) ~ ", M, "+", X, "+", covariates))
  fit.dv <- survreg(surv_mode, data = dt)
  
  set.seed(12)
  med.out <- mediate(fit.mediator, fit.dv, treat = X, mediator = M, sim = 100)
  #summary(med.out)
  result <- data.frame(
    exposure = X,
    Mediator = M,
    outcome = aa[i],
    Prop.Mediated = summary(med.out)[["n.avg"]],
    P.Mediated = summary(med.out)[["n.avg.p"]],
    stringsAsFactors = FALSE
  )
  result_data <- rbind(result_data, result) 
}
result_data$Prop.Mediated_100=100*result_data$Prop.Mediated
write.table(result_data, "combin_autoim_OS.baseline.blood.counts.cancers.csv", row.names=F, quote=F, sep=",")

# baseline autoimmune disease-related blood cell/CRP
merg$overall.AID.baseline=0
merg$overall.AID.baseline[merg$overall.AID == -1]=1
merg$overall.AID.baseline[merg$overall.AID == 1]=0
dat <- subset(merg,Overall.cancer != -1)

ee <- c('WBC_scale','RBC_scale','RBC.width_scale','Platelet_scale','Lymphocyte_scale','Monocyte_scale','Neutrophill_scale','Eosinophill_scale','Basophill_scale','NRBC_scale','NRBC.percentage_scale','Reticulocyte_scale','HLSR_scale','CRP_scale')

result_data <- data.frame(
  outcome = numeric(0),
  beta=numeric(0),
  se=numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  FDR = numeric(0),
  exposure = numeric(0),
  stringsAsFactors = FALSE
)
for (i in 1:14){
  model <- lm(dat[,ee[i]] ~ overall.AID.baseline+age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer, data=dat)
  result <- data.frame(
    outcome = ee[i],
    exposure = "overall.AID.baseline",
    beta=coef(model)[2],
    se=summary(model)$coef[2,2],
    LCI = confint.default(model)[2, 1],
    HCI = confint.default(model)[2, 2],
    P = summary(model)$coefficients[2, "Pr(>|t|)"],
    stringsAsFactors = FALSE
  )
  result_data <- rbind(result_data, result) 
}

result_data$'beta (95% CI)'<- with(result_data, sprintf("%.4f (%.4f-%.4f)", beta, LCI, HCI))
result_data$FDR<-p.adjust(result_data$P,method='BH')
result_data$bonferroni<-p.adjust(result_data$P,method='bonferroni')
result_data <- result_data[order(result_data$bonferroni),]
write.table(result_data, "OS.lm.overall.AID.baseline_bloodcell_CRP.csv", row.names=F, quote=F, sep=",")

###mediation loop AID-PRS----
library(survival)
library(survminer)
library(mediation)
##both sex
merg <- merge(merg,cov,by = "f.eid",all=FALSE)
merg <- merge(merg, data[c(1,3)], by="f.eid", all = FALSE)
merg$array <- as.factor(merg$array)
dt <- merg

covariates1 <- "age.rec+f.31.0.0+f.54.0.0+array+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10"
covariates <- "age.rec+f.31.0.0+f.54.0.0+array+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10"
# loop <- c("overall.AID.baseline") # X

data1 <- read.csv("prs.cox.sig.mediator_sig.cancer.csv",head=T)
data1 <- subset(data1, bonferroni < 0.05)
data1 <- data1[c(1:3,13)]
names(data1) <- c("M_id","outcome_id","time_id","exposure_id")
data1$time_id <- "Overall.cancer.excl_non_melanoma.diag.birth.time.censor"

#
data1$ex_out <- NA
data1$ex_out <- paste0(data1$exposure_id,"_",data1$outcome_id)
library(dplyr)
unique(data1$ex_out)
data2 <- data1 %>%
  filter(
    (ex_out == "combinwGRS_scale_hematological.cancer2" & M_id %in% c('WBC_scale',#'RBC_scale',
                                                                      'RBC.width_scale','CRP_scale','IS_baseline_use'))|
    (ex_out == "combinwGRS_scale_NHL_cancer2" & M_id %in% c('WBC_scale',#'RBC_scale',
                                                            'RBC.width_scale','CRP_scale','IS_baseline_use'))|
    (ex_out == "MSwGRS_scale_hematological.cancer2" & M_id %in% c('Lymphocyte_scale','RBC.width_scale','Basophill_scale'))|
    (ex_out == "SLEwGRS_scale_hematological.cancer2" & M_id %in% c('RBC_scale','RBC.width_scale','Platelet_scale'))|
    (ex_out == "SLEwGRS_scale_Lung_cancer2" & M_id %in% c('RBC.width_scale'))|
    (ex_out == "SLEwGRS_scale_Lymphoid_Leukaemia_cancer2" & M_id %in% c('RBC_scale','RBC.width_scale','Platelet_scale'))|
    (ex_out == "T1DwGRS_scale_Lymphoid_Leukaemia_cancer2" & M_id %in% c('RBC_scale','RBC.width_scale'))|
    (ex_out == "UCwGRS_scale_NHL_cancer2" & M_id %in% c('RBC.width_scale'#,'CRP_scale'
                                                        ))
  )
data1 <- data2
data1 <- data1[,-5]
write.table(data1, "mediation_input_data_AIDPRS.blood.counts.cancers.csv", row.names=F, quote=F, sep=",")
#
data1 <- read.csv("mediation_input_data_AIDPRS.blood.counts.cancers.csv",header = T)

loop <- data1$exposure_id
out <- data1$M_id
aa <- data1$outcome_id
tt <- data1$time_id

result_data <- data.frame(
  outcome = numeric(0),
  Prop.Mediated=numeric(0),
  P.Mediated = numeric(0),
  stringsAsFactors = FALSE
)

for (i in 1:1) {
  dt$status <- dt[,aa[i]]
  dt$time <- dt[,tt[i]]
  
  X <- loop[i] # x
  M<- out[i] # M
  # covariates <- cov[i]
  #outcome <- c("status")
  
  # x to M
  lm_mode <- as.formula(paste0(M, "~", X, "+", covariates1))
  if(M == "IS_baseline_use"){
    fit.mediator <- glm(lm_mode, data = dt)
  }else{fit.mediator <- lm(lm_mode, data = dt)}
  
  #summary(fit.mediator)
  # 
  surv_mode <- as.formula(paste0("Surv(time, status == 1) ~ ", M, "+", X, "+", covariates))
  fit.dv <- survreg(surv_mode, data = dt)
  
  set.seed(12)
  med.out <- mediate(fit.mediator, fit.dv, treat = X, mediator = M, sim = 100)
  #summary(med.out)
  result <- data.frame(
    exposure = X,
    Mediator = M,
    outcome = aa[i],
    Prop.Mediated = summary(med.out)[["n.avg"]],
    P.Mediated = summary(med.out)[["n.avg.p"]],
    stringsAsFactors = FALSE
  )
  result_data <- rbind(result_data, result) 
}
result_data$Prop.Mediated_100=100*result_data$Prop.Mediated
write.table(result_data, "AIDPRS.blood.counts.cancers.csv", row.names=F, quote=F, sep=",")


################################  Sensitivity analysis #########################
### association of predicted CAID-PRS with cancer ###

####constructed a predicted CAID-PRS by training an ensemble classifier to predict AID diagnoses
library(pROC)
library(survival)
datt=dat
#total
fold_pre <- coxph(Surv(AID_OS_diag.birth.time,overall2.AID) ~ SLEwGRS_scale+MSwGRS_scale+T1DwGRS_scale+UCwGRS_scale+CDwGRS_scale+RAwGRS_scale,
                  data=datt)
fold_predict <- predict(fold_pre,type='risk',newdata=datt)
datt$combinwGRS.predict=fold_predict
datt$combinwGRS.predict_scale=scale(datt$combinwGRS.predict)

###female
dd=subset(datt,f.31.0.0=='0')

fold_pre <- coxph(Surv(AID_OS_diag.birth.time,overall2.AID) ~ SLEwGRS_scale+MSwGRS_scale+T1DwGRS_scale+UCwGRS_scale+CDwGRS_scale+RAwGRS_scale,
                  data=dd)
fold_predict <- predict(fold_pre,type='risk',newdata=dd)
dd$combinwGRS.predict.female=fold_predict
dd$combinwGRS.predict.female_scale=scale(dd$combinwGRS.predict.female)

###male
dd=subset(datt,f.31.0.0=='1')

fold_pre <- coxph(Surv(AID_OS_diag.birth.time,overall2.AID) ~ SLEwGRS_scale+MSwGRS_scale+T1DwGRS_scale+UCwGRS_scale+CDwGRS_scale+RAwGRS_scale,
                  data=dd)
fold_predict <- predict(fold_pre,type='risk',newdata=dd)
dd$combinwGRS.predict.male=fold_predict
dd$combinwGRS.predict.male_scale=scale(dd$combinwGRS.predict.male)

##both sex
library(survival)
library(survminer)
load("251112white_afterQC_ukb_cancer_anal_cov_autoimm_cancerPRS_exclude_sexinconsistent_skin_non_melanoma_356339.time.censor.Rdata")
load("ukb_geno_array.batch.Rdata")
load("all.ukb.six.AID.combinwGRS.predict.Rdata")
merg <- merge(merg, combinwGRS.predict[c(1,6,8,10)],by.x = "f.eid",by.y = "66354.f.eid")

merg <- merge(merg, data[c(1,3)], by="f.eid", all = FALSE)
merg$array <- as.factor(merg$array)

dat=merg

aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       #"Breast_cancer2",
       #"Cervix_uteri_cancer2",
       #"Corpus_uteri_cancer2",
       #"Ovary_cancer2",
       #'female.genital.cancer2',
       #'male.genital.cancer2',
       #"Prostate_cancer2",
       #"Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
)

result_data1 <- data.frame(
  outcome = numeric(0),
  time_id = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  HR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  PH.p = numeric(0),
  stringsAsFactors = FALSE
)

for (i in 1:22) {
  outcome_id <- aa[i]
  time_id <- "Overall.cancer.excl_non_melanoma.diag.birth.time.censor"
  res.cox <- coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~ combinwGRS.predict_scale+age.rec+f.31.0.0+f.54.0.0+array+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10, data = dat)
  ph.cox <- coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~ combinwGRS.predict_scale, data=dat)
  ph_test <- cox.zph(ph.cox)
  
  result <- data.frame(
    exposure = "combinwGRS.predict_scale",
    outcome = outcome_id,
    time_id = time_id,
    case = summary(res.cox)$nevent,
    control = summary(res.cox)$n-summary(res.cox)$nevent,
    total = summary(res.cox)$n,
    beta_perSD=coef(res.cox)[1],
    se=summary(res.cox)$coef[1,3],
    HR = exp(coef(res.cox)[1]),
    LCI = exp(confint(res.cox)[1, 1]),
    HCI = exp(confint(res.cox)[1, 2]),
    P = summary(res.cox)$coefficients[1, "Pr(>|z|)"],
    PH.p=ph_test[["table"]][1,3],
    stringsAsFactors = FALSE
  )
  result_data1 <- rbind(result_data1, result) 
}

#
result_data1$'HR (95% CI)'<- with(result_data1, sprintf("%.2f (%.2f-%.2f)", HR, LCI, HCI))
result_data1$population="Both sex"


##female
###COX
# library(survival)
# library(survminer)
dat=subset(merg,f.31.0.0=='0')##female

aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       "Breast_cancer2",
       "Cervix_uteri_cancer2",
       "Corpus_uteri_cancer2",
       "Ovary_cancer2",
       'female.genital.cancer2',
       #'male.genital.cancer2',
       #"Prostate_cancer2",
       #"Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
)

result_data2 <- data.frame(
  outcome = numeric(0),
  time_id = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  HR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  PH.p = numeric(0),
  stringsAsFactors = FALSE
)

for (i in 1:27) {
  outcome_id <- aa[i]
  time_id <- "Overall.cancer.excl_non_melanoma.diag.birth.time.censor"
  res.cox <- coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~ combinwGRS.predict.female_scale+age.rec+f.54.0.0+array+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10, data = dat)
  ph.cox <- coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~ combinwGRS.predict.female_scale, data=dat)
  ph_test <- cox.zph(ph.cox)
  
  result <- data.frame(
    exposure = "combinwGRS.predict.female_scale",
    outcome = outcome_id,
    time_id = time_id,
    case = summary(res.cox)$nevent,
    control = summary(res.cox)$n-summary(res.cox)$nevent,
    total = summary(res.cox)$n,
    beta_perSD=coef(res.cox)[1],
    se=summary(res.cox)$coef[1,3],
    HR = exp(coef(res.cox)[1]),
    LCI = exp(confint(res.cox)[1, 1]),
    HCI = exp(confint(res.cox)[1, 2]),
    P = summary(res.cox)$coefficients[1, "Pr(>|z|)"],
    PH.p=ph_test[["table"]][1,3],
    stringsAsFactors = FALSE
  )
  result_data2 <- rbind(result_data2, result) 
}

#
result_data2$'HR (95% CI)'<- with(result_data2, sprintf("%.2f (%.2f-%.2f)", HR, LCI, HCI))
result_data2$population="Female"


##male
###COX
# library(survival)
# library(survminer)
dat=subset(merg,f.31.0.0=='1')##male

aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       # "Breast_cancer2",
       # "Cervix_uteri_cancer2",
       # "Corpus_uteri_cancer2",
       # "Ovary_cancer2",
       # 'female.genital.cancer2',
       'male.genital.cancer2',
       "Prostate_cancer2",
       "Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
)

result_data3 <- data.frame(
  outcome = numeric(0),
  time_id = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  HR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  PH.p = numeric(0),
  stringsAsFactors = FALSE
)

for (i in 1:25) {
  outcome_id <- aa[i]
  time_id <- "Overall.cancer.excl_non_melanoma.diag.birth.time.censor"
  res.cox <- coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~ combinwGRS.predict.male_scale+age.rec+f.54.0.0+array+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10, data = dat)
  ph.cox <- coxph(Surv(Overall.cancer.excl_non_melanoma.diag.birth.time.censor, dat[,aa[i]] == 1) ~ combinwGRS.predict.male_scale, data=dat)
  ph_test <- cox.zph(ph.cox)
  
  result <- data.frame(
    exposure = "combinwGRS.predict.male_scale",
    outcome = outcome_id,
    time_id = time_id,
    case = summary(res.cox)$nevent,
    control = summary(res.cox)$n-summary(res.cox)$nevent,
    total = summary(res.cox)$n,
    beta_perSD=coef(res.cox)[1],
    se=summary(res.cox)$coef[1,3],
    HR = exp(coef(res.cox)[1]),
    LCI = exp(confint(res.cox)[1, 1]),
    HCI = exp(confint(res.cox)[1, 2]),
    P = summary(res.cox)$coefficients[1, "Pr(>|z|)"],
    PH.p=ph_test[["table"]][1,3],
    stringsAsFactors = FALSE
  )
  result_data3 <- rbind(result_data3, result) 
}
#
result_data3$'HR (95% CI)'<- with(result_data3, sprintf("%.2f (%.2f-%.2f)", HR, LCI, HCI))
result_data3$population="Male"


##both sex/female/male
data <- rbind(result_data1,result_data2,result_data3)

##
data$FDR.all<-p.adjust(data$P,method='BH')
data$bonferroni.all<-p.adjust(data$P,method='bonferroni')
data=data[order(data[,"FDR.all"]),]
write.table(data, "sensitivity.all.cox.autoimPRS_perSD_cancer_adj_array_sex_dig.age.centre_10pc_exclude_skin.csv", row.names=F, quote=F, sep=",")

#####################Firth's bias-reduced logistic
library(logistf)
########## CAID & cancer
#both sex
aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       #"Breast_cancer2",
       #"Cervix_uteri_cancer2",
       #"Corpus_uteri_cancer2",
       #"Ovary_cancer2",
       #'female.genital.cancer2',
       #'male.genital.cancer2',
       #"Prostate_cancer2",
       #"Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
       
)

covariates <- c("age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat +aspirin",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat +aspirin",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + hepatitis.BC",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + T2D.baseline + chronic_pancreatitis.baseline",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + sun.summ.win.average",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer+ processed_meat",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ f.31.0.0+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer"
)

result_data1 <- data.frame(
  outcome = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  OR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  stringsAsFactors = FALSE
)
for (i in 1:22) {
  mode <- as.formula(paste0(aa[i], " ~ overall.AID.baseline + ", covariates[i]))
  model=logistf(mode,data=dat)
  result <- data.frame(
    outcome = aa[i],
    case = table(dat[,aa[i]])['1'],
    control = table(dat[,aa[i]])['0'],
    total = table(dat[,aa[i]])['0']+table(dat[,aa[i]])['1'],
    beta_perSD=model[["coefficients"]][2],
    se=sqrt(diag(model$var))[2],
    OR = exp(model$coefficients)[2],
    LCI = exp(model$ci.lower)[2],
    HCI = exp(model$ci.upper)[2],
    P = model[["prob"]][2],
    stringsAsFactors = FALSE
  )
  result_data1 <- rbind(result_data1, result) 
}

result_data1$exposure="overall.AID.baseline"
result_data1$population="Both sex"
result_data1$'OR (95% CI)' <- with(result_data1, sprintf("%.2f (%.2f-%.2f)", OR, LCI, HCI))

#female
dat=subset(merg,Overall.cancer > -1&f.31.0.0=='0')
aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       "Breast_cancer2",
       "Cervix_uteri_cancer2",
       "Corpus_uteri_cancer2",
       "Ovary_cancer2",
       'female.genital.cancer2',
       #'male.genital.cancer2',
       #"Prostate_cancer2",
       #"Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
       
)

covariates <- c("age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat +aspirin",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat +aspirin",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + hepatitis.BC",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + T2D.baseline + chronic_pancreatitis.baseline",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + sun.summ.win.average",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                #"age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer+ processed_meat",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer"
)

result_data2 <- data.frame(
  outcome = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  OR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  stringsAsFactors = FALSE
)
for (i in 1:27) {
  mode <- as.formula(paste0(aa[i], " ~ overall.AID.baseline + ", covariates[i]))
  model=logistf(mode,data=dat)
  result <- data.frame(
    outcome = aa[i],
    case = table(dat[,aa[i]])['1'],
    control = table(dat[,aa[i]])['0'],
    total = table(dat[,aa[i]])['0']+table(dat[,aa[i]])['1'],
    beta_perSD=model[["coefficients"]][2],
    se=sqrt(diag(model$var))[2],
    OR = exp(model$coefficients)[2],
    LCI = exp(model$ci.lower)[2],
    HCI = exp(model$ci.upper)[2],
    P = model[["prob"]][2],
    stringsAsFactors = FALSE
  )
  result_data2 <- rbind(result_data2, result) 
}

result_data2$exposure="overall.AID.baseline"
result_data2$population="female"
result_data2$'OR (95% CI)' <- with(result_data2, sprintf("%.2f (%.2f-%.2f)", OR, LCI, HCI))

#male
dat=subset(merg,Overall.cancer > -1&f.31.0.0=='1')
aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       # "Breast_cancer2",
       # "Cervix_uteri_cancer2",
       # "Corpus_uteri_cancer2",
       # "Ovary_cancer2",
       # 'female.genital.cancer2',
       'male.genital.cancer2',
       "Prostate_cancer2",
       "Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
       
)

covariates <- c("age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat +aspirin",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + processed_meat +aspirin",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + hepatitis.BC",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + T2D.baseline + chronic_pancreatitis.baseline",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + sun.summ.win.average",
                # "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                # "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                # "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                # "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                # "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer + age.menarche.imp + number.birth.imp + menopausal +HRT",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec + Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer+ processed_meat",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer",
                "age.rec+ Townse_index_imp_median +education + bmi_imp_median + PA_MET_imp_median + smoke + alcohol + familyhistory_cancer"
)

result_data3 <- data.frame(
  outcome = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  OR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  stringsAsFactors = FALSE
)
for (i in 1:25) {
  mode <- as.formula(paste0(aa[i], " ~ overall.AID.baseline + ", covariates[i]))
  model=logistf(mode,data=dat)
  result <- data.frame(
    outcome = aa[i],
    case = table(dat[,aa[i]])['1'],
    control = table(dat[,aa[i]])['0'],
    total = table(dat[,aa[i]])['0']+table(dat[,aa[i]])['1'],
    beta_perSD=model[["coefficients"]][2],
    se=sqrt(diag(model$var))[2],
    OR = exp(model$coefficients)[2],
    LCI = exp(model$ci.lower)[2],
    HCI = exp(model$ci.upper)[2],
    P = model[["prob"]][2],
    stringsAsFactors = FALSE
  )
  result_data3 <- rbind(result_data3, result) 
}

result_data3$exposure="overall.AID.baseline"
result_data3$population="male"
result_data3$'OR (95% CI)' <- with(result_data3, sprintf("%.2f (%.2f-%.2f)", OR, LCI, HCI))

result_data <- rbind(result_data1,result_data2,result_data3)
result_data$FDR.all<-p.adjust(result_data$P,method='BH')
result_data$bonferroni.all<-p.adjust(result_data$P,method='bonferroni')
write.table(result_data, "1.firth.combin_autoim_OS.baseline_cancer_adj_newcov.csv", row.names=F, quote=F, sep=",")



#####Firth's bias-reduced logistic   CAID-PRS & cancer
#both sex
dat <-merg
aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       #"Breast_cancer2",
       #"Cervix_uteri_cancer2",
       #"Corpus_uteri_cancer2",
       #"Ovary_cancer2",
       #'female.genital.cancer2',
       #'male.genital.cancer2',
       #"Prostate_cancer2",
       #"Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
       
)

result_data1 <- data.frame(
  outcome = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  OR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  stringsAsFactors = FALSE
)
for (i in 1:22) {
  model=logistf(dat[,aa[i]] ~ combinwGRS_scale+age.rec+f.31.0.0+f.54.0.0+array+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10,data=dat)
  result <- data.frame(
    outcome = aa[i],
    case = table(dat[,aa[i]])['1'],
    control = table(dat[,aa[i]])['0'],
    total = table(dat[,aa[i]])['0']+table(dat[,aa[i]])['1'],
    beta_perSD=model[["coefficients"]][2],
    se=sqrt(diag(model$var))[2],
    OR = exp(model$coefficients)[2],
    LCI = exp(model$ci.lower)[2],
    HCI = exp(model$ci.upper)[2],
    P = model[["prob"]][2],
    stringsAsFactors = FALSE
  )
  result_data1 <- rbind(result_data1, result) 
}

result_data1$exposure="combinwGRS_scale"
result_data1$population="Both sex"
#
result_data1$'OR (95% CI)' <- with(result_data1, sprintf("%.2f (%.2f-%.2f)", OR, LCI, HCI))

#female
dat=subset(merg,f.31.0.0=='0')
aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       "Breast_cancer2",
       "Cervix_uteri_cancer2",
       "Corpus_uteri_cancer2",
       "Ovary_cancer2",
       'female.genital.cancer2',
       #'male.genital.cancer2',
       #"Prostate_cancer2",
       #"Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
       
)

result_data2 <- data.frame(
  outcome = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  OR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  stringsAsFactors = FALSE
)
for (i in 1:27) {
  model=logistf(dat[,aa[i]] ~ combinwGRS.female_scale+age.rec+f.54.0.0+array+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10,data=dat)
  result <- data.frame(
    outcome = aa[i],
    case = table(dat[,aa[i]])['1'],
    control = table(dat[,aa[i]])['0'],
    total = table(dat[,aa[i]])['0']+table(dat[,aa[i]])['1'],
    beta_perSD=model[["coefficients"]][2],
    se=sqrt(diag(model$var))[2],
    OR = exp(model$coefficients)[2],
    LCI = exp(model$ci.lower)[2],
    HCI = exp(model$ci.upper)[2],
    P = model[["prob"]][2],
    stringsAsFactors = FALSE
  )
  result_data2 <- rbind(result_data2, result) 
}

result_data2$exposure="combinwGRS.female_scale"
result_data2$population="female"
#
result_data2$'OR (95% CI)' <- with(result_data2, sprintf("%.2f (%.2f-%.2f)", OR, LCI, HCI))

#male
dat=subset(merg,f.31.0.0=='1')
aa<- c("Overall.cancer2","LOAP_cancer2",
       "Oesophagus_cancer2",
       "Stomach_cancer2",
       "Colorectal_cancer2",
       "Liver_cancer2",
       "Pancreas_cancer2",
       "Lung_cancer2",
       "Melanoma_cancer2",
       # "Breast_cancer2",
       # "Cervix_uteri_cancer2",
       # "Corpus_uteri_cancer2",
       # "Ovary_cancer2",
       # 'female.genital.cancer2',
       'male.genital.cancer2',
       "Prostate_cancer2",
       "Testis_cancer2",
       "Kidney_cancer2",
       "Bladder_cancer2",
       "Brain_cancer2",
       "Thyroid_cancer2",
       "Hodgkin_Disease_cancer2",
       "Multiple_Myeloma_cancer2",
       "Lymphoid_Leukaemia_cancer2",
       "Anal_cancer2",
       "NHL_cancer2",
       'hematological.cancer2',
       'digestive.cancer2',
       'hpv.cancer2',
       'urinary.cancer2'
       
)

result_data3 <- data.frame(
  outcome = numeric(0),
  case = numeric(0),
  control=numeric(0),
  total = numeric(0),
  beta_perSD=numeric(0),
  se=numeric(0),
  OR = numeric(0),
  LCI = numeric(0),
  HCI = numeric(0),
  P = numeric(0),
  stringsAsFactors = FALSE
)
for (i in 1:25) {
  model=logistf(dat[,aa[i]] ~ combinwGRS.male_scale+age.rec+f.54.0.0+array+pc1+pc2+pc3+pc4+pc5+pc6+pc7+pc8+pc9+pc10,data=dat)
  result <- data.frame(
    outcome = aa[i],
    case = table(dat[,aa[i]])['1'],
    control = table(dat[,aa[i]])['0'],
    total = table(dat[,aa[i]])['0']+table(dat[,aa[i]])['1'],
    beta_perSD=model[["coefficients"]][2],
    se=sqrt(diag(model$var))[2],
    OR = exp(model$coefficients)[2],
    LCI = exp(model$ci.lower)[2],
    HCI = exp(model$ci.upper)[2],
    P = model[["prob"]][2],
    stringsAsFactors = FALSE
  )
  result_data3 <- rbind(result_data3, result) 
}

result_data3$exposure="combinwGRS.male_scale"
result_data3$population="male"
#
result_data3$'OR (95% CI)' <- with(result_data3, sprintf("%.2f (%.2f-%.2f)", OR, LCI, HCI))
result_data <- rbind(result_data1,result_data2,result_data3)
result_data$FDR.all<-p.adjust(result_data$P,method='BH')
result_data$bonferroni.all<-p.adjust(result_data$P,method='bonferroni')
write.table(result_data, "2.all.firth.combinPRS_perSD_cancer_adj_array_sex_dig.age.centre_10pc_exclude_skin.csv", row.names=F, quote=F, sep=",")
