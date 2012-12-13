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
-- Atualização da tabela `skill_cast_db`
--

REPLACE INTO `skill_cast_db` VALUES(2303, '2000', '2000', '0', '10000:20000:30000', '0', '0', '-1\r\n');

--
-- Atualização da tabela `skill_unit_db`
--

REPLACE INTO `skill_unit_db` VALUES(2301, '0xce', '', '2', '0', '-1', 'enemy', '0x200E\r\n');
REPLACE INTO `skill_unit_db` VALUES(2303, '0xd0', '', '3', '0', '-1', 'all', '0x2018\r\n');
REPLACE INTO `skill_unit_db` VALUES(2465, '0xf1', '', '0', '1', '1000', 'all', '0x010\r\n');
REPLACE INTO `skill_unit_db` VALUES(2466, '0xf2', '', '0', '1', '1000', 'all', '0x010\r\n');	
REPLACE INTO `skill_unit_db` VALUES(2467, '0xf3', '', '0', '1', '1000', 'all', '0x010\r\n');	
REPLACE INTO `skill_unit_db` VALUES(2468, '0xf4', '', '0', '1', '1000', 'all', '0x010\r\n');