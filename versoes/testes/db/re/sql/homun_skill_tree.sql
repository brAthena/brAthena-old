--
-- Estrutura para a tabela `homun_skill_tree`
--         

CREATE TABLE `homun_skill_tree` (
	`Class` smallint(6) unsigned NOT NULL default '0',
	`SkillID` smallint(6) unsigned NOT NULL default '0',
	`MaxLv` tinyint(2) unsigned NOT NULL default '0',
	`PrereqSkillID1` smallint(6) unsigned NOT NULL default '0',
	`PrereqSkillLv1` smallint(6) unsigned NOT NULL default '0',
	`PrereqSkillID2` smallint(6) unsigned NOT NULL default '0',
	`PrereqSkillLv2` smallint(6) unsigned NOT NULL default '0',
	`PrereqSkillID3` smallint(6) unsigned NOT NULL default '0',
	`PrereqSkillLv3` smallint(6) unsigned NOT NULL default '0',
	`PrereqSkillID4` smallint(6) unsigned NOT NULL default '0',
	`PrereqSkillLv4` smallint(6) unsigned NOT NULL default '0',
	`PrereqSkillID5` smallint(6) unsigned NOT NULL default '0',
	`PrereqSkillLv5` smallint(6) unsigned NOT NULL default '0',
	PRIMARY KEY (`Class`)
) ENGINE=MyISAM;

#
# Habilidades de Homunculus.
# Descrição: Responsável pelos requesitos de habilidades dos homunculus.
# Cabeçalho: REPLACE INTO `homun_skill_tree` VALUES ('ID da Habilidade','Nível Máximo','Pré-Requesito da Habilidade de ID-1',Level de ID-1,
# 'Pré-Requesito da Habilidade de ID-2','Level de ID-2','Pré-Requesito da Habilidade de ID-3','Level de ID-3','Pré-Requesito da Habilidade de ID-4',
# 'Level de ID-4','Pré-Requesito da Habilidade de ID-5','Level de ID-5');
# 

REPLACE INTO `homun_skill_tree` VALUES (6001,8001,5,0,0,0,0,0,0,0,0,0,0);		# 'HLIF_HEAL = Cura pelas Mãos'
REPLACE INTO `homun_skill_tree` VALUES (6001,8002,5,8001,3,0,0,0,0,0,0,0,0); 	# 'HLIF_AVOID = Bater em Retirada'
REPLACE INTO `homun_skill_tree` VALUES (6001,8003,5,8001,5,0,0,0,0,0,0,0,0); 	# 'HLIF_BRAIN = Cirurgia Cerebral'
REPLACE INTO `homun_skill_tree` VALUES (6002,8005,5,0,0,0,0,0,0,0,0,0,0);  		# 'HAMI_CASTLE = Fortaleza'
REPLACE INTO `homun_skill_tree` VALUES (6002,8006,5,8005,5,0,0,0,0,0,0,0,0);  	# 'HAMI_DEFENCE = Trocar de Lugar'
REPLACE INTO `homun_skill_tree` VALUES (6002,8007,5,8006,3,0,0,0,0,0,0,0,0); 	# 'HAMI_SKIN = Pele de Adamantiun'
REPLACE INTO `homun_skill_tree` VALUES (6003,8009,5,0,0,0,0,0,0,0,0,0,0); 		# 'HFLI_MOON = Pica-Pau'
REPLACE INTO `homun_skill_tree` VALUES (6003,8010,5,8009,3,0,0,0,0,0,0,0,0); 	# 'HFLI_FLEET = Vôo Acelerado'
REPLACE INTO `homun_skill_tree` VALUES (6003,8011,5,8010,3,0,0,0,0,0,0,0,0); 	# 'HFLI_SPEED = Frenético'
REPLACE INTO `homun_skill_tree` VALUES (6004,8013,5,0,0,0,0,0,0,0,0,0,0); 		# 'HVAN_CAPRICE = Capricho'
REPLACE INTO `homun_skill_tree` VALUES (6004,8014,5,8013,3,0,0,0,0,0,0,0,0); 	# 'HVAN_CHAOTIC = Benção Caótica'
REPLACE INTO `homun_skill_tree` VALUES (6004,8015,5,8013,5,0,0,0,0,0,0,0,0); 	# 'HVAN_INSTRUCT = Mudança de Planos'
REPLACE INTO `homun_skill_tree` VALUES (6005,8001,5,0,0,0,0,0,0,0,0,0,0); 		# 'HLIF_HEAL = Cura pelas Mãos'
REPLACE INTO `homun_skill_tree` VALUES (6005,8002,5,8001,3,0,0,0,0,0,0,0,0); 	# 'HLIF_AVOID = Bater em Retirada'
REPLACE INTO `homun_skill_tree` VALUES (6005,8003,5,8001,5,0,0,0,0,0,0,0,0 );	# 'HLIF_BRAIN = Cirurgia Cerebral'
REPLACE INTO `homun_skill_tree` VALUES (6006,8005,5,0,0,0,0,0,0,0,0,0,0); 		# 'HAMI_CASTLE = Fortaleza'
REPLACE INTO `homun_skill_tree` VALUES (6006,8006,5,8005,5,0,0,0,0,0,0,0,0); 	# 'HAMI_DEFENCE = Trocar de Lugar'
REPLACE INTO `homun_skill_tree` VALUES (6006,8007,5,8006,3,0,0,0,0,0,0,0,0); 	# 'HAMI_SKIN = Pele de Adamantiun'
REPLACE INTO `homun_skill_tree` VALUES (6007,8009,5,0,0,0,0,0,0,0,0,0,0);		# 'HFLI_MOON = Pica-Pau'
REPLACE INTO `homun_skill_tree` VALUES (6007,8010,5,8009,3,0,0,0,0,0,0,0,0); 	# 'HFLI_FLEET = Vôo Acelerado'
REPLACE INTO `homun_skill_tree` VALUES (6007,8011,5,8010,3,0,0,0,0,0,0,0,0 );	# 'HFLI_SPEED = Frenético'
REPLACE INTO `homun_skill_tree` VALUES (6008,8013,5,0,0,0,0,0,0,0,0,0,0); 		# 'HVAN_CAPRICE = Capricho'
REPLACE INTO `homun_skill_tree` VALUES (6008,8014,5,8013,3,0,0,0,0,0,0,0,0); 	# 'HVAN_CHAOTIC = Benção Caótica'
REPLACE INTO `homun_skill_tree` VALUES (6008,8015,5,8013,5,0,0,0,0,0,0,0,0); 	# 'HVAN_INSTRUCT = Mudança de Planos'
REPLACE INTO `homun_skill_tree` VALUES (6009,8001,5,0,0,0,0,0,0,0,0,0,0);		# 'HLIF_HEAL = Cura pelas Mãos'
REPLACE INTO `homun_skill_tree` VALUES (6009,8002,5,8001,3,0,0,0,0,0,0,0,0); 	# 'HLIF_AVOID = Bater em Retirada'
REPLACE INTO `homun_skill_tree` VALUES (6009,8003,5,8001,5,0,0,0,0,0,0,0,0); 	# 'HLIF_BRAIN = Cirurgia Cerebral'
REPLACE INTO `homun_skill_tree` VALUES (6009,8004,3,0,0,0,0,0,0,0,0,0,0); 		# 'HLIF_CHANGE = Esforço Mental'
REPLACE INTO `homun_skill_tree` VALUES (6010,8005,5,0,0,0,0,0,0,0,0,0,0); 		# 'HAMI_CASTLE = Trocar de Lugar'
REPLACE INTO `homun_skill_tree` VALUES (6010,8006,5,8005,5,0,0,0,0,0,0,0,0); 	# 'HAMI_DEFENCE = Fortaleza'
REPLACE INTO `homun_skill_tree` VALUES (6010,8007,5,8006,3,0,0,0,0,0,0,0,0); 	# 'HAMI_SKIN = Pele de Adamantiun'
REPLACE INTO `homun_skill_tree` VALUES (6010,8008,3,0,0,0,0,0,0,0,0,0,0); 		# 'HAMI_BLOODLUST = Desejo Sangrento'
REPLACE INTO `homun_skill_tree` VALUES (6011,8009,5,0,0,0,0,0,0,0,0,0,0); 		# 'HFLI_MOON = Pica-Pau'
REPLACE INTO `homun_skill_tree` VALUES (6011,8010,5,8009,3,0,0,0,0,0,0,0,0);	# 'HFLI_FLEET = Vôo Acelerado'
REPLACE INTO `homun_skill_tree` VALUES (6011,8011,5,8010,3,0,0,0,0,0,0,0,0); 	# 'HFLI_SPEED = Frenético'
REPLACE INTO `homun_skill_tree` VALUES (6011,8012,3,0,0,0,0,0,0,0,0,0,0); 		# 'HFLI_SBR44 = S.B.R.44'
REPLACE INTO `homun_skill_tree` VALUES (6012,8013,5,0,0,0,0,0,0,0,0,0,0); 		# 'HVAN_CAPRICE = Capricho'
REPLACE INTO `homun_skill_tree` VALUES (6012,8014,5,8013,3,0,0,0,0,0,0,0,0); 	# 'HVAN_CHAOTIC = Benção Caótica'
REPLACE INTO `homun_skill_tree` VALUES (6012,8015,5,8013,5,0,0,0,0,0,0,0,0); 	# 'HVAN_INSTRUCT = Mudança de Planos'
REPLACE INTO `homun_skill_tree` VALUES (6012,8016,3,0,0,0,0,0,0,0,0,0,0); 		# 'HVAN_EXPLOSION = Auto-Destruição'
REPLACE INTO `homun_skill_tree` VALUES (6013,8001,5,0,0,0,0,0,0,0,0,0,0); 		# 'HLIF_HEAL = Cura pelas Mãos'
REPLACE INTO `homun_skill_tree` VALUES (6013,8002,5,8001,3,0,0,0,0,0,0,0,0); 	# 'HLIF_AVOID = Bater em Retirada'
REPLACE INTO `homun_skill_tree` VALUES (6013,8003,5,8001,5,0,0,0,0,0,0,0,0); 	# 'HLIF_BRAIN = Cirurgia Cerebral'
REPLACE INTO `homun_skill_tree` VALUES (6013,8004,3,0,0,0,0,0,0,0,0,0,0); 		# 'HLIF_CHANGE = Esforço Mental'
REPLACE INTO `homun_skill_tree` VALUES (6014,8005,5,0,0,0,0,0,0,0,0,0,0);		# 'HAMI_CASTLE = Fortaleza'
REPLACE INTO `homun_skill_tree` VALUES (6014,8006,5,8005,5,0,0,0,0,0,0,0,0); 	# 'HAMI_DEFENCE = Trocar de Lugar'
REPLACE INTO `homun_skill_tree` VALUES (6014,8007,5,8006,3,0,0,0,0,0,0,0,0); 	# 'HAMI_SKIN = Pele de Adamantiun'
REPLACE INTO `homun_skill_tree` VALUES (6014,8008,3,0,0,0,0,0,0,0,0,0,0); 		# 'HAMI_BLOODLUST = Desejo Sangrento'
REPLACE INTO `homun_skill_tree` VALUES (6015,8009,5,0,0,0,0,0,0,0,0,0,0); 		# 'HFLI_MOON = Pica-Pau'
REPLACE INTO `homun_skill_tree` VALUES (6015,8010,5,8009,3,0,0,0,0,0,0,0,0); 	# 'HFLI_FLEET = Vôo Acelerado'
REPLACE INTO `homun_skill_tree` VALUES (6015,8011,5,8010,3,0,0,0,0,0,0,0,0);	# 'HFLI_SPEED = Frenético'
REPLACE INTO `homun_skill_tree` VALUES (6015,8012,3,0,0,0,0,0,0,0,0,0,0); 		# 'HFLI_SBR44 = S.B.R.44'
REPLACE INTO `homun_skill_tree` VALUES (6016,8013,5,0,0,0,0,0,0,0,0,0,0); 		# 'HVAN_CAPRICE = Capricho'
REPLACE INTO `homun_skill_tree` VALUES (6016,8014,5,8013,3,0,0,0,0,0,0,0,0); 	# 'HVAN_CHAOTIC = Benção Caótica'
REPLACE INTO `homun_skill_tree` VALUES (6016,8015,5,8013,5,0,0,0,0,0,0,0,0); 	# 'HVAN_INSTRUCT = Mudança de Planos'
REPLACE INTO `homun_skill_tree` VALUES (6016,8016,3,0,0,0,0,0,0,0,0,0,0); 		# 'HVAN_EXPLOSION = Auto-Destruição'
REPLACE INTO `homun_skill_tree` VALUES (6048,8022,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_LIGHT_OF_REGENE'
REPLACE INTO `homun_skill_tree` VALUES (6048,8023,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_OVERED_BOOST'
REPLACE INTO `homun_skill_tree` VALUES (6048,8024,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_ERASER_CUTTER'
REPLACE INTO `homun_skill_tree` VALUES (6048,8025,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_XENO_SLASHER'
REPLACE INTO `homun_skill_tree` VALUES (6048,8026,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_SILENT_BREEZE'
REPLACE INTO `homun_skill_tree` VALUES (6049,8031,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_STAHL_HORN'
REPLACE INTO `homun_skill_tree` VALUES (6049,8032,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_GOLDENE_FERSE'
REPLACE INTO `homun_skill_tree` VALUES (6049,8033,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_STEINWAND'
REPLACE INTO `homun_skill_tree` VALUES (6050,8018,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_SUMMON_LEGION'
REPLACE INTO `homun_skill_tree` VALUES (6050,8019,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_NEEDLE_OF_PARALYZE'
REPLACE INTO `homun_skill_tree` VALUES (6050,8020,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_POISON_MIST'
REPLACE INTO `homun_skill_tree` VALUES (6050,8021,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_PAIN_KILLER'
REPLACE INTO `homun_skill_tree` VALUES (6051,8039,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_MAGMA_FLOW'
REPLACE INTO `homun_skill_tree` VALUES (6051,8040,5,0,0,0,0,0,0,0,0,0,0);		# 'MH_GRANITIC_ARMOR'
REPLACE INTO `homun_skill_tree` VALUES (6051,8041,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_LAVA_SLIDE'
REPLACE INTO `homun_skill_tree` VALUES (6051,8042,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_PYROCLASTIC'
REPLACE INTO `homun_skill_tree` VALUES (6051,8043,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_VOLCANIC_ASH'
REPLACE INTO `homun_skill_tree` VALUES (6052,8027,1,0,0,0,0,0,0,0,0,0,0); 		# 'MH_STYLE_CHANGE'
REPLACE INTO `homun_skill_tree` VALUES (6052,8028,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_SONIC_CRAW'
REPLACE INTO `homun_skill_tree` VALUES (6052,8029,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_SILVERVEIN_RUSH'
REPLACE INTO `homun_skill_tree` VALUES (6052,8030,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_MIDNIGHT_FRENZY'
REPLACE INTO `homun_skill_tree` VALUES (6052,8034,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_HEILIGE_STANGE'
REPLACE INTO `homun_skill_tree` VALUES (6052,8035,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_ANGRIFFS_MODUS'
REPLACE INTO `homun_skill_tree` VALUES (6052,8036,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_TINDER_BREAKER'
REPLACE INTO `homun_skill_tree` VALUES (6052,8037,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_CBC'
REPLACE INTO `homun_skill_tree` VALUES (6052,8038,5,0,0,0,0,0,0,0,0,0,0); 		# 'MH_EQC'