-- Adicionado 'B' para `type` no `picklog` e `zenylog`

ALTER TABLE `picklog` MODIFY `type` ENUM('M','P','L','T','V','S','N','C','A','R','G','E','B') NOT NULL DEFAULT 'P';
ALTER TABLE `zenylog` MODIFY `type` ENUM('M','T','V','S','N','A','E','B') NOT NULL DEFAULT 'S';
