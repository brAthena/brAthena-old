--
-- Estrutura para a tabela `mob_chat_db`
-- 

CREATE TABLE IF NOT EXISTS `mob_chat_db` (
  `Line` tinyint(1) unsigned NOT NULL default '0',
  `Color` smallint(2) unsigned NOT NULL default '0',
  `Dialog` text NOT NULL,
  PRIMARY KEY (`Line`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*
 Monstros MvPs.
 Descrição: Responsável pelo banco de dados de monstros mvps.
 Cabeçalho: REPLACE INTO `mob_chat_db` VALUES ('Linha,Cor,Diálogo');
*/

REPLACE INTO `mob_chat_db` VALUES (1,0xFF0000,'Fraco! Me desafie se tiver alguma coragem!');
REPLACE INTO `mob_chat_db` VALUES (2,0xFF0000,'Impressionante! Eu me pergunto até onde sua imprudencia irá levá-lo.');
REPLACE INTO `mob_chat_db` VALUES (3,0xFF0000,'Tenho pena de você estar contra mim. Agora se prepare para meu ataque!');
REPLACE INTO `mob_chat_db` VALUES (4,0xFF0000,'Meus servos fiéis! O recebram com uma morte dolorosa!');
REPLACE INTO `mob_chat_db` VALUES (5,0xFF0000,'Não fuja!');
REPLACE INTO `mob_chat_db` VALUES (6,0xFF0000,'Vocês, humanos inúteis. Seus poderes sagrados não tem efeito sobre mim!');
REPLACE INTO `mob_chat_db` VALUES (7,0xFF0000,'Subalternos inúteis!... Tudo bem, eu tenho mais armas descartáveis para usar.');
REPLACE INTO `mob_chat_db` VALUES (8,0xFF0000,'Reze para seus deuses!');
REPLACE INTO `mob_chat_db` VALUES (9,0xFF0000,'Você ainda acha que é um jogo para mim?');
REPLACE INTO `mob_chat_db` VALUES (10,0xFF0000,'Vanish!');
REPLACE INTO `mob_chat_db` VALUES (11,0xFF0000,'Vamos ver por quanto tempo você pode agüentar meu poder!');
REPLACE INTO `mob_chat_db` VALUES (12,0xFF0000,'Isso é tudo que você tem?');
REPLACE INTO `mob_chat_db` VALUES (13,0xFF0000,'Você está me fazendo cócegas!');
REPLACE INTO `mob_chat_db` VALUES (14,0xFF0000,'Chama isso de ataque? Assista e aprenda, seus fracos!');
REPLACE INTO `mob_chat_db` VALUES (15,0xFF0000,'É hora de terminar o jogo!');
REPLACE INTO `mob_chat_db` VALUES (16,0xFF0000,'Ha! Você é mais forte do que eu pensava!');
REPLACE INTO `mob_chat_db` VALUES (17,0xFF0000,'Não! Isso não poder estar acontecendo! Eu sou Satan Morroc, o Rei da Destruição!');
REPLACE INTO `mob_chat_db` VALUES (18,0xFF0000,'Eu nunca morrei! Sempre estarei voltando para lhe pegar!');
REPLACE INTO `mob_chat_db` VALUES (19,0xFF0000,'Eu nasci para conquistar este mundo! Nada poderá me impedir!');
REPLACE INTO `mob_chat_db` VALUES (20,0xFF0000,'Seus dias estão contados!');
REPLACE INTO `mob_chat_db` VALUES (21,0xFF0000,'Strike! Meus dedos dilaceradores de aço!');
REPLACE INTO `mob_chat_db` VALUES (22,0xFF0000,'Hahaha! Me diga quem sou! Eo sou Bafomé! O herdeiro do inferno!');
REPLACE INTO `mob_chat_db` VALUES (23,0xFF0000,'Aproveite sua vida enquanto pode! Sua esperança em breve irá se transformar em desespero!');
REPLACE INTO `mob_chat_db` VALUES (24,0xFF0000,'Quando você aprenderá a lição? Quando morrer?');
REPLACE INTO `mob_chat_db` VALUES (25,0xFF0000,'Não... Eu não posso perder! Não vou implorar por minha vida! Eu não estou fugindo! Eu não aceito isso como derrota!');
REPLACE INTO `mob_chat_db` VALUES (26,0xFF0000,'Argh... Eu... Eu, estou enfraquecendo...');
REPLACE INTO `mob_chat_db` VALUES (27,0xFF0000,'O que você quer de mim?');
REPLACE INTO `mob_chat_db` VALUES (28,0xFF0000,'Não! Eu não fiz isso! Ele é quem planejou tudo isso!');
REPLACE INTO `mob_chat_db` VALUES (29,0xFF0000,'Eu só queria encontrar a paz..!  É por isso que eu estava fugindo!');
REPLACE INTO `mob_chat_db` VALUES (30,0xFF0000,'Ahhhh!!! Agora, só tenho que matá-lo!');
REPLACE INTO `mob_chat_db` VALUES (31,0xFF0000,'Moscas irritantes!! Saiam de mim!');
REPLACE INTO `mob_chat_db` VALUES (32,0xFF0000,'Sofra no Inferno!');
REPLACE INTO `mob_chat_db` VALUES (33,0xFF0000,'Mwahahaha! Sinta a fúria da terra!!!');
REPLACE INTO `mob_chat_db` VALUES (34,0xFF0000,'Não... Eu não irei aceitar esta derrota!');
