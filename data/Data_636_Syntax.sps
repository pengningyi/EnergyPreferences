* Encoding: UTF-8.



***************************************************************************************************
***4.2 cluster Analysis
***************************************************************************************************

CLUSTER   Analysisrun2_Importances_GrünerStromspanclasstool_tip_lin 
    Analysisrun2_Importances_SolarInvestitionspanclasstool_ti 
    Analysisrun2_Importances_Handelmitspanclasstool_tip_link 
    Analysisrun2_Importances_PreiskWhspanclasstool_tip_link 
    Analysisrun2_Importances_Kostenspanclasstool_tip_linkf
  /METHOD WARD
  /MEASURE=SEUCLID
  /PRINT SCHEDULE
  /PLOT DENDROGRAM VICICLE
  /SAVE CLUSTER(3).




***HB estimation of average attribute importance scores (bold %) and mean part-worth utilities (zero-centered) by selected 3-cluster solution 

GLM Analysisrun2_Importances_GrünerStromspanclasstool_tip_lin 
    Analysisrun2_Utilities_Zerocentered_b100grünb Analysisrun2_Utilities_Zerocentered_b80grünb 
    Analysisrun2_Utilities_Zerocentered_b60grünb 
    Analysisrun2_Importances_SolarInvestitionspanclasstool_ti 
    Analysisrun2_Utilities_Zerocentered_fontsize2colorS_B 
    Analysisrun2_Utilities_Zerocentered_fontsize2colorS_A 
    Analysisrun2_Utilities_Zerocentered_fontsize2colorS 
    Analysisrun2_Importances_Handelmitspanclasstool_tip_link 
    Analysisrun2_Utilities_Zerocentered_fontsize2color 
    Analysisrun2_Utilities_Zerocentered_fontsize2colora 
    Analysisrun2_Utilities_Zerocentered_fontsize2colork 
    Analysisrun2_Importances_PreiskWhspanclasstool_tip_link 
    Analysisrun2_Utilities_Zerocentered_bfixbfontsize2 
    Analysisrun2_Utilities_Zerocentered_bdynamischbfontsi 
    Analysisrun2_Utilities_Zerocentered_bpersonalisiertbfon 
    Analysisrun2_Importances_Kostenspanclasstool_tip_linkf 
    Analysisrun2_Utilities_Zerocentered_b20günstigerbfont 
    Analysisrun2_Utilities_Zerocentered_bgenausovielbfont 
    Analysisrun2_Utilities_Zerocentered_b20teurerbfontsi Analysisrun2_Utilities_Zerocentered_NONE BY 
    CLU3
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /POSTHOC=CLU3(BONFERRONI) 
  /PLOT=PROFILE(CLU3) TYPE=BAR ERRORBAR=CI MEANREFERENCE=NO
  /EMMEANS=TABLES(CLU3) COMPARE ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ OPOWER
  /CRITERIA=ALPHA(.05)
  /DESIGN= CLU3.


***************************************************************************************************
***4.3 Segment description based on demographic and psychographic information
***************************************************************************************************

******************************
***Demographic

ONEWAY Age BY CLU3
  /STATISTICS DESCRIPTIVES EFFECTS HOMOGENEITY 
  /MISSING ANALYSIS
  /CRITERIA=CILEVEL(0.95)
  /POSTHOC=BONFERRONI ALPHA(0.05).

CROSSTABS
  /TABLES=GenderMF Education Income OwnOrRent BillPayer ownsPV InterestPV ownsEV InterestEV 
    ownsStorage InterestBATTERY ownsHeatPump InterestHP CitySize HLlocalAcquitances LocalPreference BY 
    CLU3
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ 
  /CELLS=COUNT COLUMN 
  /COUNT ROUND CELL.


GLM Age NoHuouseholders  BY CLU3
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /POSTHOC=CLU3(BONFERRONI GH) 
  /EMMEANS=TABLES(CLU3) COMPARE ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ OPOWER HOMOGENEITY
  /CRITERIA=ALPHA(.05)
  /DESIGN= CLU3.



******************************
***Computing variables


***N° of offers they will consider in real life 

COUNT Nreallife=CBCMelanieStudy1_Random1_none CBCMelanieStudy1_Random2_none 
    CBCMelanieStudy1_Random3_none CBCMelanieStudy1_Random4_none CBCMelanieStudy1_Random5_none 
    CBCMelanieStudy1_Random6_none CBCMelanieStudy1_Random7_none CBCMelanieStudy1_Random8_none 
    CBCMelanieStudy1_Random9_none CBCMelanieStudy1_Random10_none(1).
EXECUTE.

***Values

RECODE ValueScale_r1 ValueScale_r2 ValueScale_r3 ValueScale_r4 ValueScale_r5 ValueScale_r6 
    ValueScale_r7 ValueScale_r8 ValueScale_r9 ValueScale_r10 ValueScale_r11 ValueScale_r12 
    ValueScale_r13 ValueScale_r14 ValueScale_r15 ValueScale_r16 (1=-1) (2=0) (3=1) (4=2) (5=3) (6=4) 
    (7=5) (8=6) (9=7) INTO ALT_equality BIO_respecting EGO_socialpower HED_pleasure BIO_unitynature 
    ALT_worldpeace EGO_wealth EGO_authority ALT_socialJustice HED_enjoylife BIO_protecting 
    EGO_influential ALT_helpful BIO_preventing HED_selfindulgent EGO_ambitious.
EXECUTE.



COMPUTE MRAT=MEAN(ALT_equality, BIO_respecting, EGO_socialpower, HED_pleasure, BIO_unitynature,
    ALT_worldpeace, EGO_wealth, EGO_authority, ALT_socialJustice, HED_enjoylife, BIO_protecting, 
    EGO_influential, ALT_helpful, BIO_preventing, HED_selfindulgent, EGO_ambitious).
EXECUTE.

COMPUTE ALTRUISMcenter = MEAN(ALT_equality, ALT_worldpeace, ALT_socialJustice,ALT_helpful) - MRAT . 
EXECUTE . 

COMPUTE EGOISMcenter = MEAN(EGO_socialpower,EGO_wealth, EGO_authority, EGO_influential, EGO_ambitious ) - MRAT . 
EXECUTE . 

COMPUTE HEDONISMcenter = MEAN(HED_pleasure, HED_enjoylife, HED_selfindulgent ) - MRAT . 
EXECUTE . 

COMPUTE BIOSPHERICcenter = MEAN(BIO_respecting, BIO_unitynature,BIO_protecting, BIO_preventing) - MRAT . 
EXECUTE . 

****

COMPUTE ALTRUISM = MEAN(ALT_equality, ALT_worldpeace, ALT_socialJustice,ALT_helpful)  . 
EXECUTE . 

COMPUTE EGOISM = MEAN(EGO_socialpower,EGO_wealth, EGO_authority, EGO_influential, EGO_ambitious )  . 
EXECUTE . 

COMPUTE HEDONISM = MEAN(HED_pleasure, HED_enjoylife, HED_selfindulgent ) . 
EXECUTE . 

COMPUTE BIOSPHERIC = MEAN(BIO_respecting, BIO_unitynature,BIO_protecting, BIO_preventing)  . 
EXECUTE .

******************************
***psychographic


GLM PoliticalOrientation RiskSeeking EnergySecurity ClimateChangeConcern HEDONISMcenter 
    EGOISMcenter ALTRUISMcenter BIOSPHERICcenter EnergyLiteracy BFI_Extraversion BFI_Agreeableness 
    BFI_Conscientiousness BFI_Neuroticism BFI_Openness ESS_Trust Energy_Trust Nreallife BY CLU3
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
  /POSTHOC=CLU3(BONFERRONI) 
  /EMMEANS=TABLES(CLU3) COMPARE ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ OPOWER
  /CRITERIA=ALPHA(.05)
  /DESIGN= CLU3.

