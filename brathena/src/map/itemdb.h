/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/map/itemdb.h                                                     *
* Descrição Primária.                                                        *
* Descrição mais elaborada sobre o arquivo.                                  *
* \author brAthena, Athena, eAthena                                          *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/

#ifndef _ITEMDB_H_
#define _ITEMDB_H_

#include "../common/db.h"
#include "../common/mmo.h" // ITEM_NAME_LENGTH
#include "map.h"

/**
 * Declarations
 **/
struct item_package;

/**
 * Defines
 **/
#define MAX_ITEMDB 0x8000 // 32k array entries in array (the rest goes to the db)
#define MAX_ITEMDELAYS 10 // The maximum number of item delays
#define MAX_SEARCH 5 //Designed for search functions, species max number of matches to display.
#define MAX_ITEMS_PER_COMBO 6 /* maximum amount of items a combo may require */
#define IG_FINDINGORE 6
#define IG_POTION 37
//The max. item group count (increase this when needed).
#define MAX_ITEMGROUP 140
#define MAX_RANDITEM    20000

#define CARD0_FORGE 0x00FF
#define CARD0_CREATE 0x00FE
#define CARD0_PET ((short)0xFF00)

//Marks if the card0 given is "special" (non-item id used to mark pets/created items. [Skotlex]
#define itemdb_isspecial(i) ((i) == CARD0_FORGE || (i) == CARD0_CREATE || (i) == CARD0_PET)

//Use apple for unknown items.
#define UNKNOWN_ITEM_ID 512

enum item_itemid {
	ITEMID_RED_POTION            = 501,
	ITEMID_YELLOW_POTION         = 503,
	ITEMID_WHITE_POTION          = 504,
	ITEMID_BLUE_POTION           = 505,
	ITEMID_HOLY_WATER            = 523,
	ITEMID_RED_SLIM_POTION       = 545,
	ITEMID_YELLOW_SLIM_POTION    = 546,
	ITEMID_WHITE_SLIM_POTION     = 547,
	ITEMID_WING_OF_FLY           = 601,
	ITEMID_WING_OF_BUTTERFLY     = 602,
	ITEMID_BRANCH_OF_DEAD_TREE   = 604,
	ITEMID_ANODYNE               = 605,
	ITEMID_ALOEBERA              = 606,
	ITEMID_EMPTY_BOTTLE          = 713,
	ITEMID_EMPERIUM              = 714,
	ITEMID_YELLOW_GEMSTONE       = 715,
	ITEMID_RED_GEMSTONE          = 716,
	ITEMID_BLUE_GEMSTONE         = 717,
	ITEMID_ORIDECON_STONE        = 756,
	ITEMID_ALCHOL                = 970,
	ITEMID_ORIDECON              = 984,
	ITEMID_BOODY_RED             = 990,
	ITEMID_CRYSTAL_BLUE          = 991,
	ITEMID_WIND_OF_VERDURE       = 992,
	ITEMID_YELLOW_LIVE           = 993,
	ITEMID_FLAME_HEART           = 994,
	ITEMID_MISTIC_FROZEN         = 995,
	ITEMID_ROUGH_WIND            = 996,
	ITEMID_GREAT_NATURE          = 997,
	ITEMID_IRON                  = 998,
	ITEMID_STEEL                 = 999,
	ITEMID_STAR_CRUMB            = 1000,
	ITEMID_IRON_ORE              = 1002,
	ITEMID_PHRACON               = 1010,
	ITEMID_EMVERETARCON          = 1011,
	ITEMID_TRAP                  = 1065,
	ITEMID_ANGRA_MANYU           = 1599,
	ITEMID_STRANGE_EMBRYO        = 6415,
	ITEMID_FACE_PAINT            = 6120,
	ITEMID_STONE                 = 7049,
	ITEMID_FIRE_BOTTLE           = 7135,
	ITEMID_ACID_BOTTLE           = 7136,
	ITEMID_MENEATER_PLANT_BOTTLE = 7137,
	ITEMID_MINI_BOTTLE           = 7138,
	ITEMID_COATING_BOTTLE        = 7139,
	ITEMID_FRAGMENT_OF_CRYSTAL   = 7321,
	ITEMID_SKULL_                = 7420,
	ITEMID_TOKEN_OF_SIEGFRIED    = 7621,
	ITEMID_TRAP_ALLOY            = 7940,
	ITEMID_RED_POUCH_OF_SURPRISE = 12024,
	ITEMID_BLOODY_DEAD_BRANCH    = 12103,
	ITEMID_PORING_BOX            = 12109,
	ITEMID_MERCENARY_RED_POTION  = 12184,
	ITEMID_MERCENARY_BLUE_POTION = 12185,
	ITEMID_BATTLE_MANUAL         = 12208,
	ITEMID_BUBBLE_GUM            = 12210,
	ITEMID_GIANT_FLY_WING        = 12212,
	ITEMID_NEURALIZER            = 12213,
	ITEMID_M_CENTER_POTION       = 12241,
	ITEMID_M_AWAKENING_POTION    = 12242,
	ITEMID_M_BERSERK_POTION      = 12243,
	ITEMID_COMP_BATTLE_MANUAL    = 12263,
	ITEMID_COMP_BUBBLE_GUM       = 12264,
	ITEMID_LOVE_ANGEL            = 12287,
	ITEMID_SQUIRREL              = 12288,
	ITEMID_GOGO                  = 12289,
	ITEMID_PICTURE_DIARY         = 12304,
	ITEMID_MINI_HEART            = 12305,
	ITEMID_NEWCOMER              = 12306,
	ITEMID_KID                   = 12307,
	ITEMID_MAGIC_CASTLE          = 12308,
	ITEMID_BULGING_HEAD          = 12309,
	ITEMID_THICK_MANUAL50        = 12312,
	ITEMID_ANCILLA               = 12333,
	ITEMID_BLACK_THING           = 12435,
	ITEMID_REINS_OF_MOUNT        = 12622,
	ITEMID_NOBLE_NAMEPLATE       = 12705,
	ITEMID_C_WING_OF_FLY         = 12887,
	ITEMID_DUN_TELE_SCROLL1      = 14527,
	ITEMID_BATTLE_MANUAL25       = 14532,
	ITEMIDBATTLE_MANUAL100       = 14533,
	ITEMID_BATTLE_MANUAL_X3      = 14545,
	ITEMID_DUN_TELE_SCROLL2      = 14581,
	ITEMID_WOB_RUNE              = 14582,
	ITEMID_WOB_SCHWALTZ          = 14583,
	ITEMID_WOB_RACHEL            = 14584,
	ITEMID_WOB_LOCAL             = 14585,
	ITEMID_SIEGE_TELEPORT_SCROLL = 14591,
	ITEMID_JOB_MANUAL50          = 14592,
};

enum cards_item_list {
	ITEMID_GHOSTRING_CARD = 4047,
	ITEMID_PHREEONI_CARD  = 4121,
	ITEMID_MISTRESS_CARD  = 4132,
	ITEMID_ORC_LOAD_CARD  = 4135,
	ITEMID_ORC_HERO_CARD  = 4143,
	ITEMID_TAO_GUNKA_CARD = 4302,
};

/**
 * Mechanic
 **/
enum mechanic_item_list {
	ITEMID_ACCELERATOR                = 2800,
	ITEMID_HOVERING_BOOSTER,         // 2801
	ITEMID_SUICIDAL_DEVICE,          // 2802
	ITEMID_SHAPE_SHIFTER,            // 2803
	ITEMID_COOLING_DEVICE,           // 2804
	ITEMID_MAGNETIC_FIELD_GENERATOR, // 2805
	ITEMID_BARRIER_BUILDER,          // 2806
	ITEMID_REPAIR_KIT,               // 2807
	ITEMID_CAMOUFLAGE_GENERATOR,     // 2808
	ITEMID_HIGH_QUALITY_COOLER,      // 2809
	ITEMID_SPECIAL_COOLER,           // 2810
	ITEMID_MONKEY_SPANNER             = 6186,
};

/**
 * Spell Books
 */
enum spell_book_item_list {
	ITEMID_MAGIC_BOOK_FB    = 6189,
	ITEMID_MAGIC_BOOK_CB,  // 6190
	ITEMID_MAGIC_BOOK_LB,  // 6191
	ITEMID_MAGIC_BOOK_SG,  // 6192
	ITEMID_MAGIC_BOOK_LOV, // 6193
	ITEMID_MAGIC_BOOK_MS,  // 6194
	ITEMID_MAGIC_BOOK_CM,  // 6195
	ITEMID_MAGIC_BOOK_TV,  // 6196
	ITEMID_MAGIC_BOOK_TS,  // 6197
	ITEMID_MAGIC_BOOK_JT,  // 6198
	ITEMID_MAGIC_BOOK_WB,  // 6199
	ITEMID_MAGIC_BOOK_HD,  // 6200
	ITEMID_MAGIC_BOOK_ES,  // 6201
	ITEMID_MAGIC_BOOK_ES_, // 6202
	ITEMID_MAGIC_BOOK_CL,  // 6203
	ITEMID_MAGIC_BOOK_CR,  // 6204
	ITEMID_MAGIC_BOOK_DL,  // 6205
};

/**
 * Mercenary Scrolls
 */
enum mercenary_scroll_item_list {
	ITEMID_BOW_MERCENARY_SCROLL1     = 12153,
	ITEMID_BOW_MERCENARY_SCROLL2,   // 12154
	ITEMID_BOW_MERCENARY_SCROLL3,   // 12155
	ITEMID_BOW_MERCENARY_SCROLL4,   // 12156
	ITEMID_BOW_MERCENARY_SCROLL5,   // 12157
	ITEMID_BOW_MERCENARY_SCROLL6,   // 12158
	ITEMID_BOW_MERCENARY_SCROLL7,   // 12159
	ITEMID_BOW_MERCENARY_SCROLL8,   // 12160
	ITEMID_BOW_MERCENARY_SCROLL9,   // 12161
	ITEMID_BOW_MERCENARY_SCROLL10,  // 12162
	ITEMID_SWORDMERCENARY_SCROLL1,  // 12163
	ITEMID_SWORDMERCENARY_SCROLL2,  // 12164
	ITEMID_SWORDMERCENARY_SCROLL3,  // 12165
	ITEMID_SWORDMERCENARY_SCROLL4,  // 12166
	ITEMID_SWORDMERCENARY_SCROLL5,  // 12167
	ITEMID_SWORDMERCENARY_SCROLL6,  // 12168
	ITEMID_SWORDMERCENARY_SCROLL7,  // 12169
	ITEMID_SWORDMERCENARY_SCROLL8,  // 12170
	ITEMID_SWORDMERCENARY_SCROLL9,  // 12171
	ITEMID_SWORDMERCENARY_SCROLL10, // 12172
	ITEMID_SPEARMERCENARY_SCROLL1,  // 12173
	ITEMID_SPEARMERCENARY_SCROLL2,  // 12174
	ITEMID_SPEARMERCENARY_SCROLL3,  // 12175
	ITEMID_SPEARMERCENARY_SCROLL4,  // 12176
	ITEMID_SPEARMERCENARY_SCROLL5,  // 12177
	ITEMID_SPEARMERCENARY_SCROLL6,  // 12178
	ITEMID_SPEARMERCENARY_SCROLL7,  // 12179
	ITEMID_SPEARMERCENARY_SCROLL8,  // 12180
	ITEMID_SPEARMERCENARY_SCROLL9,  // 12181
	ITEMID_SPEARMERCENARY_SCROLL10, // 12182
};

/**
 * Cash Food
 */
enum cash_food_item_list {
	ITEMID_STR_DISH10_   = 12202,
	ITEMID_AGI_DISH10_, // 12203
	ITEMID_INT_DISH10_, // 12204
	ITEMID_DEX_DISH10_, // 12205
	ITEMID_LUK_DISH10_, // 12206
	ITEMID_VIT_DISH10_, // 12207
};

/**
 * GC Poison
 */
enum poison_item_list {
	ITEMID_POISON_PARALYSIS       = 12717,
	ITEMID_POISON_LEECH,         // 12718
	ITEMID_POISON_OBLIVION,      // 12719
	ITEMID_POISON_CONTAMINATION, // 12720
	ITEMID_POISON_NUMB,          // 12721
	ITEMID_POISON_FEVER,         // 12722
	ITEMID_POISON_LAUGHING,      // 12723
	ITEMID_POISON_FATIGUE,       // 12724
};


/**
 * Rune Knight
 **/
enum rune_item_list {
	ITEMID_NAUTHIZ    = 12725,
	ITEMID_RAIDO,    // 12726
	ITEMID_BERKANA,  // 12727
	ITEMID_ISA,      // 12728
	ITEMID_OTHILA,   // 12729
	ITEMID_URUZ,     // 12730
	ITEMID_THURISAZ, // 12731
	ITEMID_WYRD,     // 12732
	ITEMID_HAGALAZ,  // 12733
	ITEMID_LUX_ANIMA  = 22540,
};

/**
 * Geneticist
 */
enum geneticist_item_list {
	/// Pharmacy / Cooking
	ITEMID_SEED_OF_HORNY_PLANT      = 6210,
	ITEMID_BLOODSUCK_PLANT_SEED,   // 6211
	ITEMID_BOMB_MUSHROOM_SPORE,    // 6212
	ITEMID_HP_INCREASE_POTIONS      = 12422,
	ITEMID_HP_INCREASE_POTIONM,    // 12423
	ITEMID_HP_INCREASE_POTIONL,    // 12424
	ITEMID_SP_INCREASE_POTIONS,    // 12425
	ITEMID_SP_INCREASE_POTIONM,    // 12426
	ITEMID_SP_INCREASE_POTIONL,    // 12427
	ITEMID_ENRICH_WHITE_POTIONZ,   // 12428
	ITEMID_SAVAGE_BBQ,             // 12429
	ITEMID_WUG_BLOOD_COCKTAIL,     // 12430
	ITEMID_MINOR_BRISKET,          // 12431
	ITEMID_SIROMA_ICETEA,          // 12432
	ITEMID_DROCERA_HERB_STEW,      // 12433
	ITEMID_PETTI_TAIL_NOODLE,      // 12434
	ITEMID_VITATA500,              // 12436
	ITEMID_ENRICH_CELERMINE_JUICE, // 12437
	ITEMID_CURE_FREE,              // 12475
	/// Bombs
	ITEMID_APPLE_BOMB               = 13260,
	ITEMID_COCONUT_BOMB,           // 13261
	ITEMID_MELON_BOMB,             // 13262
	ITEMID_PINEAPPLE_BOMB,         // 13263
	ITEMID_BANANA_BOMB,            // 13264
	ITEMID_BLACK_LUMP,             // 13265
	ITEMID_BLACK_HARD_LUMP,        // 13266
	ITEMID_VERY_HARD_LUMP,         // 13267
	/// Throwables
	ITEMID_MYSTERIOUS_POWDER,      // 13268
	ITEMID_BOOST500_TO_THROW,      // 13269
	ITEMID_FULL_SWINGK_TO_THROW,   // 13270
	ITEMID_MANA_PLUS_TO_THROW,     // 13271
	ITEMID_CURE_FREE_TO_THROW,     // 13272
	ITEMID_STAMINA_UP_M_TO_THROW,  // 13273
	ITEMID_DIGESTIVE_F_TO_THROW,   // 13274
	ITEMID_HP_INC_POTS_TO_THROW,   // 13275
	ITEMID_HP_INC_POTM_TO_THROW,   // 13276
	ITEMID_HP_INC_POTL_TO_THROW,   // 13277
	ITEMID_SP_INC_POTS_TO_THROW,   // 13278
	ITEMID_SP_INC_POTM_TO_THROW,   // 13279
	ITEMID_SP_INC_POTL_TO_THROW,   // 13280
	ITEMID_EN_WHITE_POTZ_TO_THROW, // 13281
	ITEMID_VITATA500_TO_THROW,     // 13282
	ITEMID_EN_CEL_JUICE_TO_THROW,  // 13283
	ITEMID_SAVAGE_BBQ_TO_THROW,    // 13284
	ITEMID_WUG_COCKTAIL_TO_THROW,  // 13285
	ITEMID_M_BRISKET_TO_THROW,     // 13286
	ITEMID_SIROMA_ICETEA_TO_THROW, // 13287
	ITEMID_DROCERA_STEW_TO_THROW,  // 13288
	ITEMID_PETTI_NOODLE_TO_THROW,  // 13289
	ITEMID_BLACK_THING_TO_THROW,   // 13290
};

enum item_nouse_list {
	NOUSE_SITTING = 0x01,
};

//
enum item_class_upper {
	ITEMUPPER_NONE       = 0x00,
	ITEMUPPER_NORMAL     = 0x01,
	ITEMUPPER_UPPER      = 0x02,
	ITEMUPPER_BABY       = 0x04,
	ITEMUPPER_THIRD      = 0x08,
	ITEMUPPER_THURDUPPER = 0x10,
	ITEMUPPER_THIRDBABY  = 0x20,
	ITEMUPPER_ALL        = 0x3f, // Sum of all the above
};

struct item_data {
	uint16 nameid;
	char name[ITEM_NAME_LENGTH],jname[ITEM_NAME_LENGTH];

	//Do not add stuff between value_buy and view_id (see how getiteminfo works)
	int value_buy;
	int value_sell;
	int type;
	int maxchance; //For logs, for external game info, for scripts: Max drop chance of this item (e.g. 0.01% , etc.. if it = 0, then monsters don't drop it, -1 denotes items sold in shops only) [Lupus]
	int sex;
	int equip;
	int weight;
	int atk;
	int def;
	int range;
	int slot;
	int look;
	int elv;
	int wlv;
	int view_id;
	int matk;
	int elvmax;/* maximum level for this item */

	int delay;
//Lupus: I rearranged order of these fields due to compatibility with ITEMINFO script command
//		some script commands should be revised as well...
	unsigned int class_base[3]; //Specifies if the base can wear this item (split in 3 indexes per type: 1-1, 2-1, 2-2)
	unsigned class_upper : 6; //Specifies if the upper-type can equip it (bitfield, 1: normal, 2: upper, 3: baby,4:third)
	struct {
		unsigned short chance;
		int id;
	} mob[MAX_SEARCH]; //Holds the mobs that have the highest drop rate for this item. [Skotlex]
	struct script_code *script; //Default script for everything.
	struct script_code *equip_script;   //Script executed once when equipping.
	struct script_code *unequip_script;//Script executed once when unequipping.
	struct {
		unsigned available : 1;
		unsigned no_refine : 1; // [celest]
		unsigned delay_consume : 1; // Signifies items that are not consumed immediately upon double-click [Skotlex]
		unsigned autoequip: 1;
		unsigned buyingstore : 1;
		unsigned bindonequip : 1;
	} flag;
	struct {// item stacking limitation
		unsigned short amount;
		unsigned int inventory:1;
		unsigned int cart:1;
		unsigned int storage:1;
		unsigned int guildstorage:1;
	} stack;
	struct {// used by ItemMoveInfo_db.sql [Megasantos/brAthena]
		unsigned int drop : 1;
		unsigned int trade : 1;
		unsigned int storage : 1;
		unsigned int cart : 1;
		unsigned int vending : 1;
		unsigned int mail : 1;
		unsigned int auction : 1;
		unsigned short override;
	} item_bound;
	struct {// used by item_nouse.txt
		unsigned int flag;
		unsigned short override;
	} item_usage;
	/* bugreport:309 */
	struct item_combo **combos;
	unsigned char combos_count;
	/* TODO add a pointer to some sort of (struct extra) and gather all the not-common vals into it to save memory */
	struct item_package *package;
};

struct item_group {
	int nameid[MAX_RANDITEM];
	int qty; //Counts amount of items in the group.
};

struct item_combo {
	struct script_code *script;
	unsigned short nameid[MAX_ITEMS_PER_COMBO];/* nameid array */
	unsigned char count;
	unsigned short id;/* id of this combo */
};

struct item_group itemgroup_db[MAX_ITEMGROUP];

struct item_package_rand_entry {
	unsigned short id;
	unsigned short qty;
	unsigned short probability;
	unsigned short hour;
	unsigned int onair : 1;
	unsigned int guid : 1;
	struct item_package_rand_entry *next;
};

struct item_package_must_entry {
	unsigned short id;
	unsigned short qty;
	unsigned short hour;
	unsigned int onair : 1;
	unsigned int guid : 1;
};

struct item_package_rand_group {
	struct item_package_rand_entry *random_list;
	unsigned short random_qty;
};

struct item_package {
	unsigned short id;
	struct item_package_rand_group *random_groups;
	struct item_package_must_entry *must_items;
	unsigned short random_qty;
	unsigned short must_qty;
};

struct item_data *itemdb_searchname(const char *name);
int itemdb_searchname_array(struct item_data **data, int size, const char *str, int flag);
struct item_data *itemdb_load(int nameid);
struct item_data *itemdb_search(int nameid);
struct item_data *itemdb_exists(int nameid);
#define itemdb_name(n)        (itemdb_search(n)->name)
#define itemdb_jname(n)       (itemdb_search(n)->jname)
#define itemdb_type(n)        (itemdb_search(n)->type)
#define itemdb_atk(n)         (itemdb_search(n)->atk)
#define itemdb_def(n)         (itemdb_search(n)->def)
#define itemdb_look(n)        (itemdb_search(n)->look)
#define itemdb_weight(n)      (itemdb_search(n)->weight)
#define itemdb_equip(n)       (itemdb_search(n)->equip)
#define itemdb_usescript(n)   (itemdb_search(n)->script)
#define itemdb_equipscript(n) (itemdb_search(n)->script)
#define itemdb_wlv(n)         (itemdb_search(n)->wlv)
#define itemdb_range(n)       (itemdb_search(n)->range)
#define itemdb_slot(n)        (itemdb_search(n)->slot)
#define itemdb_available(n)   (itemdb_search(n)->flag.available)
#define itemdb_viewid(n)      (itemdb_search(n)->view_id)
#define itemdb_autoequip(n)   (itemdb_search(n)->flag.autoequip)
#define itemdb_value_buy(n)   (itemdb_search(n)->value_buy)
#define itemdb_value_sell(n)  (itemdb_search(n)->value_sell)
#define itemdb_canrefine(n)   (!itemdb_search(n)->flag.no_refine)

#define itemdb_is_rune(n) (((n) >= ITEMID_NAUTHIZ && (n) <= ITEMID_HAGALAZ) || (n) == ITEMID_LUX_ANIMA)
#define itemdb_is_element(n) ((n) >= ITEMID_BOODY_RED && (n) <= ITEMID_YELLOW_LIVE)
#define itemdb_is_spellbook(n) ((n) >= ITEMID_MAGIC_BOOK_FB && (n) <= ITEMID_MAGIC_BOOK_DL)
#define itemdb_is_poison(n) ((n) >= ITEMID_POISON_PARALYSIS && (n) <= ITEMID_POISON_FATIGUE)
#define itemid_isgemstone(n) ((n) >= ITEMID_YELLOW_GEMSTONE && (n) <= ITEMID_BLUE_GEMSTONE)
#define itemdb_iscashfood(n) ((n) >= ITEMID_STR_DISH10_ && (n) <= ITEMID_VIT_DISH10_)
#define itemdb_is_GNbomb(n) ((n) >= ITEMID_APPLE_BOMB && (n) <= ITEMID_VERY_HARD_LUMP)
#define itemdb_is_GNthrowable(n) ((n) >= ITEMID_MYSTERIOUS_POWDER && (n) <= ITEMID_BLACK_THING_TO_THROW)
const char *itemdb_typename(int type);

int itemdb_group_bonus(struct map_session_data *sd, int itemid);
int itemdb_searchrandomid(int flags);


//Item trade restrictions [Skotlex]
int itemdb_isdropable_sub(struct item_data *, int, int);
int itemdb_cantrade_sub(struct item_data *, int, int);
int itemdb_cancart_sub(struct item_data *, int, int);
int itemdb_cansell_sub(struct item_data *,int, int);
int itemdb_canstore_sub(struct item_data *, int, int);
int itemdb_canmail_sub(struct item_data *, int, int);
int itemdb_canauction_sub(struct item_data *, int, int);
int itemdb_isrestricted(struct item *item, int gmlv, int gmlv2, int (*func)(struct item_data *, int, int));
#define itemdb_isdropable(item, gmlv) (itemdb_isrestricted((item), (gmlv), 0, itemdb_isdropable_sub))
#define itemdb_cantrade(item, gmlv, gmlv2) (itemdb_isrestricted((item), (gmlv), (gmlv2), itemdb_cantrade_sub))
#define itemdb_cansell(item, gmlv) (itemdb_isrestricted((item), (gmlv), 0, itemdb_cansell_sub))
#define itemdb_cancart(item, gmlv)  (itemdb_isrestricted((item), (gmlv), 0, itemdb_cancart_sub))
#define itemdb_canstore(item, gmlv) (itemdb_isrestricted((item), (gmlv), 0, itemdb_canstore_sub))
#define itemdb_canmail(item, gmlv) (itemdb_isrestricted((item), (gmlv), 0, itemdb_canmail_sub))
#define itemdb_canauction(item, gmlv) (itemdb_isrestricted((item), (gmlv), 0, itemdb_canauction_sub))

int itemdb_isequip(int);
int itemdb_isequip2(struct item_data *);
int itemdb_isidentified(int);
int itemdb_isidentified2(struct item_data *data);
int itemdb_isstackable(int);
int itemdb_isstackable2(struct item_data *);
uint64 itemdb_unique_id(int8 flag, int64 value); // Unique Item ID

void itemdb_reload(void);
void do_final_itemdb(void);
void do_init_itemdb(void);

/* incomplete */
struct itemdb_interface {
	void (*name_constants) (void);
	/* */
	struct item_package *packages;
	unsigned short package_count;
	/* list of item combos loaded */
	struct item_combo **combos;
	unsigned short combo_count;
	/* */
	DBMap *names;
	/* */
	void (*read_packages) (void);
	/* */
	void (*write_cached_packages) (const char *config_filename);
	bool (*read_cached_packages) (const char *config_filename);
	/* */
	struct item_data* (*name2id) (const char *str);
	void (*package_item) (struct map_session_data *sd, struct item_package *package);
	void (*read) (void);
	void (*clear) (bool total);
	struct item_combo * (*id2combo) (unsigned short id);
};

struct itemdb_interface *itemdb;

void itemdb_defaults(void);

#endif /* _ITEMDB_H_ */
