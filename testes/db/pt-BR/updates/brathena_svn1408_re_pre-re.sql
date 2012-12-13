/*_________________________________________________________________________
 /                                                                         \
 |                  _           _   _   _                                  |
 |                 | |__  _ __ / \ | |_| |__   ___ _ __   __ _             |
 |                 | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |            |
 |                 | |_) | | / ___ \ |_| | | |  __/ | | | (_| |            |
 |                 |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|            |
 |                                                                         |
 |                       brAthena © 2012 - Banco de Dados                  |
 |             Contém as atualizações de habilidades, itens e monstros     |
 \_________________________________________________________________________/
*/

--
-- Atualização da tabela `skill_db`
--

REPLACE INTO `skill_db` VALUES(3010, '3', 6, 4, '0', '0x43', '0', 5, '1', 'no', 0, '0x80', 0, 'misc', 0, '	KO_MAKIBISHI', 'Makibishi \r\n');

--
-- Atualização da tabela `skill_nocast_db`
--

REPLACE INTO `skill_nocast_db` VALUES(3013, 3);

--
-- Atualização da tabela `skill_unit_db`
--

REPLACE INTO `skill_unit_db` VALUES(3010, '0xfc', '', '0', '1', '1000', 'enemy', '0x020\r\n');

--
-- Atualização da tabela `level_penalty`
--

REPLACE INTO `level_penalty` VALUES (1, 11 ,'-1',100);
