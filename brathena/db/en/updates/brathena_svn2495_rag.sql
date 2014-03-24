#2495
CREATE TABLE IF NOT EXISTS `buffspecial_db` (
  `SC_NAME` varchar(70) NOT NULL,
  `Script` text,
  PRIMARY KEY (`SC_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

REPLACE INTO `buffspecial_db` VALUES('SC_PROTECT_DEF','{ bonus3 bSubEle,Ele_Neutral,3,BF_SHORT; bonus3 bSubEle,Ele_Water,3,BF_SHORT; bonus3 bSubEle,Ele_Earth,3,BF_SHORT; bonus3 bSubEle,Ele_Fire,3,BF_SHORT; bonus3 bSubEle,Ele_Wind,3,BF_SHORT; bonus3 bSubEle,Ele_Poison,3,BF_SHORT; bonus3 bSubEle,Ele_Holy,3,BF_SHORT; bonus3 bSubEle,Ele_Dark,3,BF_SHORT; bonus3 bSubEle,Ele_Ghost,3,BF_SHORT; bonus3 bSubEle,Ele_Undead,3,BF_SHORT; }');
REPLACE INTO `buffspecial_db` VALUES('SC_PROTECT_MDEF','{ bonus3 bSubEle,Ele_Neutral,3,BF_MAGIC; bonus3 bSubEle,Ele_Water,3,BF_MAGIC; bonus3 bSubEle,Ele_Earth,3,BF_MAGIC; bonus3 bSubEle,Ele_Fire,3,BF_MAGIC; bonus3 bSubEle,Ele_Wind,3,BF_MAGIC; bonus3 bSubEle,Ele_Poison,3,BF_MAGIC; bonus3 bSubEle,Ele_Holy,3,BF_MAGIC; bonus3 bSubEle,Ele_Dark,3,BF_MAGIC; bonus3 bSubEle,Ele_Ghost,3,BF_MAGIC; bonus3 bSubEle,Ele_Undead,3,BF_MAGIC; }');
REPLACE INTO `buffspecial_db` VALUES('SC_HEALPLUS','{ bonus bHealpower2,20; }');
REPLACE INTO `buffspecial_db` VALUES('SC_S_LIFEPOTION','{ bonus2 bHPRegenRate,5,5000; }');
REPLACE INTO `buffspecial_db` VALUES('SC_L_LIFEPOTION','{ bonus2 bHPRegenRate,7,4000; }');
REPLACE INTO `buffspecial_db` VALUES('SC_CRITICALPERCENT','{ bonus bCritical,30; }');
REPLACE INTO `buffspecial_db` VALUES('SC_PLUSAVOIDVALUE','{ bonus bFlee2,20; }');
-- REPLACE INTO `buffspecial_db` VALUES('SC_ATKER_ASPD','{}');
-- REPLACE INTO `buffspecial_db` VALUES('SC_TARGET_ASPD','{ bonus bAspdRate,20; }');
REPLACE INTO `buffspecial_db` VALUES('SC_TARGET_ASPD','{ bonus bMaxSPrate,10; }');
REPLACE INTO `buffspecial_db` VALUES('SC_ATKER_ASPD','{ bonus bMaxHPrate,5; bonus bHPrecovRate,10;}');
REPLACE INTO `buffspecial_db` VALUES('SC_ATKER_MOVESPEED','{ bonus bMaxSPrate,5; bonus bSPrecovRate,10;}');
-- REPLACE INTO `buffspecial_db` VALUES('SC_ATKER_MOVESPEED','{}');
-- REPLACE INTO `buffspecial_db` VALUES('SC_ATKER_BLOOD','{}');
-- REPLACE INTO `buffspecial_db` VALUES('SC_TARGET_BLOOD','{ sc_start SC_BLOODING,1000,20; }');
REPLACE INTO `buffspecial_db` VALUES('SC_ATKER_BLOOD','{ bonus bUseSPrate,-15; }');
REPLACE INTO `buffspecial_db` VALUES('SC_TARGET_BLOOD','{ bonus2 bResEff,Eff_Stun,1000; bonus2 bResEff,Eff_Freeze,1000; bonus2 bResEff,Eff_Stone,1000; bonus2 bResEff,Eff_Curse,1000; bonus2 bResEff,Eff_Poison,1000; bonus2 bResEff,Eff_Silence,1000; bonus2 bResEff,Eff_Blind,1000; bonus2 bResEff,Eff_Sleep,1000; bonus2 bResEff,Eff_Bleeding,1000; bonus2 bResEff,Eff_Confusion,1000;}');
REPLACE INTO `buffspecial_db` VALUES('SC_STEAMPACK','{ bonus2 bHPLossRate,100,10000; bonus bBaseAtk,20; bonus bAspdRate,25; sc_start4 SC_ENDURE,60000,10,0,0,1;}');
REPLACE INTO `buffspecial_db` VALUES('SC_MANU_ATK','{ bonus2 bAddDamageClass,1988,10; bonus2 bAddDamageClass,1989,10; bonus2 bAddDamageClass,1987,10; bonus2 bAddDamageClass,1999,10; bonus2 bAddDamageClass,1986,10; bonus2 bAddDamageClass,1990,10;}');
REPLACE INTO `buffspecial_db` VALUES('SC_MANU_DEF','{ bonus2 bAddDefClass,1988,10; bonus2 bAddDefClass,1989,10; bonus2 bAddDefClass,1987,10; bonus2 bAddDefClass,1999,10; bonus2 bAddDefClass,1986,10; bonus2 bAddDefClass,1990,10;}');
REPLACE INTO `buffspecial_db` VALUES('SC_SPL_ATK','{ bonus2 bAddDamageClass,1995,10; bonus2 bAddDamageClass,1994,10; bonus2 bAddDamageClass,1992,10; bonus2 bAddDamageClass,1993,10; bonus2 bAddDamageClass,1991,10;}');
REPLACE INTO `buffspecial_db` VALUES('SC_SPL_DEF','{ bonus2 bAddDefClass,1995,10; bonus2 bAddDefClass,1994,10; bonus2 bAddDefClass,1992,10; bonus2 bAddDefClass,1993,10; bonus2 bAddDefClass,1991,10;}');
REPLACE INTO `buffspecial_db` VALUES('SC_MANU_MATK','{ bonus2 bAddMagicDamageClass,1988,10; bonus2 bAddMagicDamageClass,1988,10; bonus2 bAddMagicDamageClass,1987,10; bonus2 bAddMagicDamageClass,1999,10; bonus2 bAddMagicDamageClass,1986,10; bonus2 bAddMagicDamageClass,1990,10;}');
REPLACE INTO `buffspecial_db` VALUES('SC_SPL_MATK','{ bonus2 bAddMagicDamageClass,1995,10; bonus2 bAddMagicDamageClass,1994,10; bonus2 bAddMagicDamageClass,1992,10; bonus2 bAddMagicDamageClass,1993,10; bonus2 bAddMagicDamageClass,1991,10;}');
REPLACE INTO `buffspecial_db` VALUES('SC_BUCHEDENOEL','{ bonus bHPrecovRate,3; bonus bSPrecovRate,3; bonus bHitRate,3; bonus bCritical,7;}');
REPLACE INTO `buffspecial_db` VALUES('SC_POPECOOKIE','{ bonus2 bAddRace,RC_NonBoss,3; bonus2 bAddRace,RC_Boss,3; bonus bMatkRate,3; bonus2 bSubEle,Ele_Neutral,3; bonus2 bSubEle,Ele_Water,3; bonus2 bSubEle,Ele_Earth,3; bonus2 bSubEle,Ele_Fire,3; bonus2 bSubEle,Ele_Wind,3; bonus2 bSubEle,Ele_Poison,3; bonus2 bSubEle,Ele_Holy,3; bonus2 bSubEle,Ele_Dark,3; bonus2 bSubEle,Ele_Ghost,20; bonus2 bSubEle,Ele_Undead,3;}');
REPLACE INTO `buffspecial_db` VALUES('SC_MAGIC_CANDY','{ bonus bMatk,30; bonus bFixedCastrate,-70; bonus bNoCastCancel,0; bonus2 bSPLossRate,90,10000; }');
REPLACE INTO `buffspecial_db` VALUES('SC_MVPCARD_ORCHERO','{ bonus2 bResEff,Eff_Stun,10000; }');
REPLACE INTO `buffspecial_db` VALUES('SC_MVPCARD_ORCLORD','{ bonus bShortWeaponDamageReturn,30; }');
REPLACE INTO `buffspecial_db` VALUES('SC_MORA_BUFF','{ bonus2 bAddDefClass,"MIMING",50; bonus2 bAddDefClass,"LITTLE_FATUM",50; bonus2 bAddDefClass,"PARUS",50; bonus2 bAddDefClass,"ANGRA_MANTIS",50; bonus2 bAddDefClass,"POM_SPIDER",50;}');
REPLACE INTO `buffspecial_db` VALUES('SC_VITALIZE_POTION','{ bonus2 bAddRace,RC_NonBoss,2; bonus2 bAddRace,RC_Boss,2; bonus bMatkRate,2; bonus bAddItemHealRate,10;}');
REPLACE INTO `buffspecial_db` VALUES('SC_G_LIFEPOTION','{ bonus2 bHPRegenRate,6,3000; }');
REPLACE INTO `buffspecial_db` VALUES('SC_ACARAJE','{ bonus bHit,5; bonus bAspdRate,10; }');
REPLACE INTO `buffspecial_db` VALUES('SC_2011RWC','{ bonus bStr,3; bonus bVit,3; bonus bInt,3; bonus bDex,3; bonus bAgi,3; bonus bLuk,3; bonus2 bAddRace,RC_NonBoss,5; bonus2 bAddRace,RC_Boss,5; bonus bMatkRate,5; }');
REPLACE INTO `buffspecial_db` VALUES('SC_MVPCARD_TAOGUNKA','{ bonus bMaxHPrate,100; bonus bDefRate,-50; bonus bMdefRate,-50; }');
REPLACE INTO `buffspecial_db` VALUES('SC_MVPCARD_MISTRESS','{ bonus bNoGemStone,0; bonus bUseSPrate,25; }');
REPLACE INTO `buffspecial_db` VALUES('SC_SKELSCROLL','{ bonus2 bSubRace,RC_DemiHuman,5; }');
REPLACE INTO `buffspecial_db` VALUES('SC_DISTRUCTIONSCROLL','{ bonus2 bAddEle,Ele_Holy,5; bonus2 bAddRace,RC_Angel,5; bonus2 bAddRace,RC_Boss,5; }');
REPLACE INTO `buffspecial_db` VALUES('SC_ROYALSCROLL','{ bonus2 bSubRace,RC_Boss,5; }');
REPLACE INTO `buffspecial_db` VALUES('SC_IMMUNITYSCROLL','{ bonus2 bSubEle,Ele_Neutral,5; }');
REPLACE INTO `buffspecial_db` VALUES('SC_MYSTICSCROLL','{ bonus bMatkRate,5; bonus bVariableCastrate,-5; }');
REPLACE INTO `buffspecial_db` VALUES('SC_BATTLESCROLL','{ bonus2 bAddRace,RC_Boss,5; bonus bMatkRate,5; bonus bAspdRate,5; }');
REPLACE INTO `buffspecial_db` VALUES('SC_ARMORSCROLL','{ bonus bDef,5; bonus bFlee,10; }');
REPLACE INTO `buffspecial_db` VALUES('SC_FREYJASCROLL','{ bonus bMdef,5; bonus bFlee2,10;}');
REPLACE INTO `buffspecial_db` VALUES('SC_SOULSCROLL','{ bonus bMaxHPRate,5; bonus bMaxSPRate,5; }');
-- REPLACE INTO `buffspecial_db` VALUES('SC_MAGIC_CANDY','{ bonus bMatk,30; bonus bFixedCastrate,-70; bonus bNoCastCancel,0; bonus2 bSPLossRate,90,10000; }');
-- REPLACE INTO `buffspecial_db` VALUES('SC_PC_IZ_DUN05','{ if((IsPremiumPcCafe == 2) || (IsPremiumPcCafe == 10) || (IsPremiumPcCafe == 65)) if GetMapName == "iz_dun05" bonus2 bExpAddRace,RC_Boss,50; bonus2 bExpAddRace,RC_NonBoss,50; }');
REPLACE INTO `buffspecial_db` VALUES('SC_OVERLAPEXPUP','{ bonus2 bExpAddRace,RC_Boss,10; bonus2 bExpAddRace,RC_NonBoss,10; /*AddReceiveItem_Equip 10*/ }');
REPLACE INTO `buffspecial_db` VALUES('SC_SKF_CAST','{ bonus bVariableCastrate,-5; }');
REPLACE INTO `buffspecial_db` VALUES('SC_SKF_ASPD','{ bonus bAspdRate,3; }');
REPLACE INTO `buffspecial_db` VALUES('SC_SKF_ATK','{ bonus bBaseAtk,24; }');
REPLACE INTO `buffspecial_db` VALUES('SC_SKF_MATK','{ bonus bMatk,24; }');
REPLACE INTO `buffspecial_db` VALUES('SC_GM_BATTLE','{ bonus2 bAddRace,RC_NonBoss,5; bonus2 bAddRace,RC_Boss,5; bonus bMatkRate,5; bonus bMaxHPrate,3; bonus bMaxSPRate,3; }');
REPLACE INTO `buffspecial_db` VALUES('SC_GM_BATTLE2','{ bonus2 bAddRace,RC_NonBoss,10; bonus2 bAddRace,RC_Boss,10; bonus bMatkRate,10; bonus bMaxHPrate,5; bonus bMaxSPRate,5; }');
