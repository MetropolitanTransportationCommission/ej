CREATE VIEW EJ_2016.year_2000_2010_change AS
SELECT
	acs14cn00.GEOID,
	acs14cn00.Pop_2000,
	acs14cn00.TotalPop_ACS2014,
	acs14cn00.PopChange,
	acs14cn00.TotalPopPctChange,
	acs14cn00.LowIncomePop_2000,
	acs14cn00.LowIncomePop_ACS2014,
	acs14cn00.LowIncomePopChange,
	acs14cn00.LowIncomePopPctChange,
	acs14cn00.MinorityPop_2000,
	acs14cn00.MinorityPopulation_ACS2014,
	acs14cn00.MinorityPopChange,
	acs14cn00.MinorityPopPctChange,
	acs14cn00.Pop65Plus_2000,
	acs14cn00.Pop65Plus_ACS2014,
	acs14cn00.Pop65PlusChange,
	acs14cn00.Pop65PlusPctChange,
	acs14cn00.SPFAM_2000,
	acs14cn00.SPFAM_ACS2014,	
	acs14cn00.SPFAM_Change,
	acs14cn00.SPFAM_PctChange,
	acs14cn00.POP_LEP_2000,
	acs14cn00.POP_LEP_ACS2014,	
	acs14cn00.POP_LEP_Change,
	acs14cn00.POP_LEP_PctChange,
	acs14cn00.POP_ZVHHS_2000,
	acs14cn00.POP_ZVHHS_ACS2014,	
	acs14cn00.POP_ZVHHS_Change,
	acs14cn00.POP_ZVHHS_PctChange,
	acs14cn00.POP_HUS_RENT50_2000,
	acs14cn00.POP_HUS_RENT50_ACS2014,	
	acs14cn00.POP_HUS_RENT50_Change,
	acs14cn00.RENT50_PctChange,
	acs14cn00.Asian_Pacific_Islander_2000,
	acs14cn00.Asian_Pacific_Islander_2014,	
	acs14cn00.Asian_Pacific_IslanderPopChange,
	acs14cn00.AsianPacificPopPctChange,
	acs14cn00.Black_Alone_2000,
	acs14cn00.Black_Alone_2014,	
	acs14cn00.BlackAlonePopPctChange,
	acs14cn00.BlackPopChange,
	acs14cn00.White_Alone_2000,
	acs14cn00.White_Alone_2014,	
	acs14cn00.WhitePopChange,
	acs14cn00.WhiteAlonePopPctChange,
	acs14cn00.Hispanic_Alone_2000,
	acs14cn00.Hispanic_Alone_2014,
	acs14cn00.Hispanic_LatinoPopChange,
	acs14cn00.HispanicLatinoPopPctChange
From 
EJ_2016.EJ_Select_Variables_ACS2014_Census2000_Compare as acs14cn00 LEFT JOIN
EJ_2016.update_2014_acs_dec22 AS acsupdate ON acs14cn00.GEOID = CONCAT (acsupdate.state, acsupdate.county, acsupdate.tract) 
--as mentioned in the git commit, the following join is commented out because it doesn't seem to result in the right number of census tracts
--LEFT JOIN EJ_2016.update_2014_acs_dec22_spfam_chg as chg_upd1 on CONCAT (acsupdate.state, acsupdate.county, acsupdate.tract) = chg_upd1.GEOID10
--LEFT JOIN EJ_2016.update_2014_acs_dec22_pop_hus_rent_chg as chg_upd2 ON chg_upd1.GEOID10 = chg_upd2.GEOID10