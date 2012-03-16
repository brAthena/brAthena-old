#ifndef _BRACONFIGS_
#define _BRACONFIGS_

/**
 * Max number of items on @autolootid list
 **/
#define AUTOLOOTITEM_SIZE 10

//Uncomment to enable the Cell Stack Limit mod.
//It's only config is the battle_config cell_stack_limit.
//Only chars affected are those defined in BL_CHAR (mobs and players currently)
//#define CELL_NOSTACK

//Uncomment to enable circular area checks.
//By default, all range checks in Aegis are of Square shapes, so a weapon range
//  of 10 allows you to attack from anywhere within a 21x21 area.
//Enabling this changes such checks to circular checks, which is more realistic,
//  but is not the official behaviour.
//#define CIRCULAR_AREA

/**
 * Constants come last; so they process anything that could've been modified in early includes
 **/
#include "./data/const.h"
/**
 * End of File
 **/
#endif
