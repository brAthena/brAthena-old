/****************************************************************************!
*                _           _   _   _                                       *    
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *  
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *   
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *    
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *    
*                                                                            *
*                                                                            *
* \file src/map/script.h                                                     *
* Descrição Primária.                                                        *
* Descrição mais elaborada sobre o arquivo.                                  *
* \author brAthena, Athena, eAthena                                          *
* \date ?                                                                    *
* \todo ?                                                                    *  
*****************************************************************************/

#ifndef _SCRIPT_H_
#define _SCRIPT_H_

#include "../common/strlib.h" //StringBuf
#include "map.h" //EVENT_NAME_LENGTH

#include <setjmp.h>
#include <errno.h>

/**
 * Declarations
 **/
struct map_session_data;
struct eri;

/**
 * Defines
 **/
// TODO: Remove temporary code
//#define ENABLE_CASE_CHECK
#define DeprecationWarning(func, bad, good, file, line) ShowWarning("%s: use of deprecated keyword '%s' (use '%s' instead) in file '%s', line '%d'. This will be a critical error in a near future.\n", (func), (bad), (good), (file), (line));
#define DeprecationWarning2(func, bad, good, where) ShowWarning("%s: detected possible use of wrong case in a script. Found '%s', probably meant to be '%s' (in '%s'). This will become fatal in a near future.\n", (func), (bad), (good), (where));
#define disp_deprecation_message(func, good, p) disp_warning_message(func": use of deprecated keyword (use '"good"' instead). This will be a critical error in a near future.", (p));

#define NUM_WHISPER_VAR 10

/// Maximum amount of elements in script arrays (soon getting ducked)
#define SCRIPT_MAX_ARRAYSIZE 128+50

#define SCRIPT_BLOCK_SIZE 512

// Using a prime number for SCRIPT_HASH_SIZE should give better distributions
#define SCRIPT_HASH_SIZE 1021

// Specifies which string hashing method to use
//#define SCRIPT_HASH_DJB2
//#define SCRIPT_HASH_SDBM
#define SCRIPT_HASH_ELF

#define SCRIPT_EQUIP_TABLE_SIZE 20

//#define SCRIPT_DEBUG_DISP
//#define SCRIPT_DEBUG_DISASM
//#define SCRIPT_DEBUG_HASH
//#define SCRIPT_DEBUG_DUMP_STACK

///////////////////////////////////////////////////////////////////////////////
//## TODO possible enhancements: [FlavioJS]
// - 'callfunc' supporting labels in the current npc "::LabelName"
// - 'callfunc' supporting labels in other npcs "NpcName::LabelName"
// - 'function FuncName;' function declarations reverting to global functions
//   if local label isn't found
// - join callfunc and callsub's functionality
// - remove dynamic allocation in add_word()
// - remove GETVALUE / SETVALUE
// - clean up the set_reg / set_val / setd_sub mess
// - detect invalid label references at parse-time

//
// struct script_state* st;
//

/// Returns the script_data at the target index
#define script_getdata(st,i) ( &((st)->stack->stack_data[(st)->start + (i)]) )
/// Returns if the stack contains data at the target index
#define script_hasdata(st,i) ( (st)->end > (st)->start + (i) )
/// Returns the index of the last data in the stack
#define script_lastdata(st) ( (st)->end - (st)->start - 1 )
/// Pushes an int into the stack
#define script_pushint(st,val) (push_val((st)->stack, C_INT, (val),NULL))
/// Pushes a string into the stack (script engine frees it automatically)
#define script_pushstr(st,val) (push_str((st)->stack, C_STR, (val)))
/// Pushes a copy of a string into the stack
#define script_pushstrcopy(st,val) (push_str((st)->stack, C_STR, aStrdup(val)))
/// Pushes a constant string into the stack (must never change or be freed)
#define script_pushconststr(st,val) (push_str((st)->stack, C_CONSTSTR, (val)))
/// Pushes a nil into the stack
#define script_pushnil(st) (push_val((st)->stack, C_NOP, 0,NULL))
/// Pushes a copy of the data in the target index
#define script_pushcopy(st,i) (push_copy((st)->stack, (st)->start + (i)))

#define script_isstring(st,i) data_isstring(script_getdata((st),(i)))
#define script_isint(st,i) data_isint(script_getdata((st),(i)))

#define script_getnum(st,val) (conv_num((st), script_getdata((st),(val))))
#define script_getstr(st,val) (conv_str((st), script_getdata((st),(val))))
#define script_getref(st,val) ( script_getdata((st),(val))->ref )

// Note: "top" functions/defines use indexes relative to the top of the stack
//       -1 is the index of the data at the top

/// Returns the script_data at the target index relative to the top of the stack
#define script_getdatatop(st,i) ( &((st)->stack->stack_data[(st)->stack->sp + (i)]) )
/// Pushes a copy of the data in the target index relative to the top of the stack
#define script_pushcopytop(st,i) push_copy((st)->stack, (st)->stack->sp + (i))
/// Removes the range of values [start,end[ relative to the top of the stack
#define script_removetop(st,start,end) ( pop_stack((st), ((st)->stack->sp + (start)), (st)->stack->sp + (end)) )

//
// struct script_data* data;
//

/// Returns if the script data is a string
#define data_isstring(data) ( (data)->type == C_STR || (data)->type == C_CONSTSTR )
/// Returns if the script data is an int
#define data_isint(data) ( (data)->type == C_INT )
/// Returns if the script data is a reference
#define data_isreference(data) ( (data)->type == C_NAME )
/// Returns if the script data is a label
#define data_islabel(data) ( (data)->type == C_POS )
/// Returns if the script data is an internal script function label
#define data_isfunclabel(data) ( (data)->type == C_USERFUNC_POS )

/// Returns if this is a reference to a constant
#define reference_toconstant(data) ( str_data[reference_getid(data)].type == C_INT )
/// Returns if this a reference to a param
#define reference_toparam(data) ( str_data[reference_getid(data)].type == C_PARAM )
/// Returns if this a reference to a variable
//##TODO confirm it's C_NAME [FlavioJS]
#define reference_tovariable(data) ( str_data[reference_getid(data)].type == C_NAME )
/// Returns the unique id of the reference (id and index)
#define reference_getuid(data) ( (data)->u.num )
/// Returns the id of the reference
#define reference_getid(data) ( (int32)(reference_getuid(data) & 0x00ffffff) )
/// Returns the array index of the reference
#define reference_getindex(data) ( (int32)(((uint32)(reference_getuid(data) & 0xff000000)) >> 24) )
/// Returns the name of the reference
#define reference_getname(data) ( str_buf + str_data[reference_getid(data)].str )
/// Returns the linked list of uid-value pairs of the reference (can be NULL)
#define reference_getref(data) ( (data)->ref )
/// Returns the value of the constant
#define reference_getconstant(data) ( str_data[reference_getid(data)].val )
/// Returns the type of param
#define reference_getparamtype(data) ( str_data[reference_getid(data)].val )

/// Composes the uid of a reference from the id and the index
#define reference_uid(id,idx) ( (int32)((((uint32)(id)) & 0x00ffffff) | (((uint32)(idx)) << 24)) )

#define not_server_variable(prefix) ( (prefix) != '$' && (prefix) != '.' && (prefix) != '\'')
#define not_array_variable(prefix) ( (prefix) != '$' && (prefix) != '@' && (prefix) != '.' && (prefix) != '\'' )
#define is_string_variable(name) ( (name)[strlen(name) - 1] == '$' )

#define script_fetch(st, n, t) do { \
	if( script_hasdata((st),(n)) ) \
		(t)=script_getnum((st),(n)); \
	else \
		(t) = 0; \
} while(0)


/**
 * Enumerations
 **/
typedef enum c_op {
    C_NOP, // end of script/no value (nil)
    C_POS,
    C_INT, // number
    C_PARAM, // parameter variable (see pc_readparam/pc_setparam)
    C_FUNC, // buildin function call
    C_STR, // string (free'd automatically)
    C_CONSTSTR, // string (not free'd)
    C_ARG, // start of argument list
    C_NAME,
    C_EOL, // end of line (extra stack values are cleared)
    C_RETINFO,
    C_USERFUNC, // internal script function
    C_USERFUNC_POS, // internal script function label
    C_REF, // the next call to c_op2 should push back a ref to the left operand

    // operators
    C_OP3, // a ? b : c
    C_LOR, // a || b
    C_LAND, // a && b
    C_LE, // a <= b
    C_LT, // a < b
    C_GE, // a >= b
    C_GT, // a > b
    C_EQ, // a == b
    C_NE, // a != b
    C_XOR, // a ^ b
    C_OR, // a | b
    C_AND, // a & b
    C_ADD, // a + b
    C_SUB, // a - b
    C_MUL, // a * b
    C_DIV, // a / b
    C_MOD, // a % b
    C_NEG, // - a
    C_LNOT, // ! a
    C_NOT, // ~ a
    C_R_SHIFT, // a >> b
    C_L_SHIFT, // a << b
    C_ADD_POST, // a++
    C_SUB_POST, // a--
    C_ADD_PRE, // ++a
    C_SUB_PRE, // --a
} c_op;

enum hQueueOpt {
	HQO_NONE,
	HQO_onLogOut,
	HQO_OnDeath,
	HQO_OnMapChange,
	HQO_MAX,
};

enum e_script_state { RUN,STOP,END,RERUNLINE,GOTO,RETFUNC,CLOSE };

enum script_parse_options {
    SCRIPT_USE_LABEL_DB = 0x1,// records labels in scriptlabel_db
    SCRIPT_IGNORE_EXTERNAL_BRACKETS = 0x2,// ignores the check for {} brackets around the script
    SCRIPT_RETURN_EMPTY_SCRIPT = 0x4// returns the script object instead of NULL for empty scripts
};

enum { LABEL_NEXTLINE=1,LABEL_START };

// for advanced scripting support ( nested if, switch, while, for, do-while, function, etc )
// [Eoe / jA 1080, 1081, 1094, 1164]
enum curly_type {
	TYPE_NULL = 0,
	TYPE_IF,
	TYPE_SWITCH,
	TYPE_WHILE,
	TYPE_FOR,
	TYPE_DO,
	TYPE_USERFUNC,
	TYPE_ARGLIST // function argument list
};

enum e_arglist {
	ARGLIST_UNDEFINED = 0,
	ARGLIST_NO_PAREN  = 1,
	ARGLIST_PAREN     = 2,
};

/*==========================================
 * (Only those needed) local declaration prototype
 * - those could be used server-wide so that the scans are done once during processing and never again,
 * - doing so would also improve map zone processing and storage [Ind]
 *------------------------------------------*/

enum {
    MF_NOMEMO,  //0
    MF_NOTELEPORT,
    MF_NOSAVE,
    MF_NOBRANCH,
    MF_NOPENALTY,
    MF_NOZENYPENALTY,
    MF_PVP,
    MF_PVP_NOPARTY,
    MF_PVP_NOGUILD,
    MF_GVG,
    MF_GVG_NOPARTY, //10
    MF_NOTRADE,
    MF_NOSKILL,
    MF_NOWARP,
    MF_PARTYLOCK,
    MF_NOICEWALL,
    MF_SNOW,
    MF_FOG,
    MF_SAKURA,
    MF_LEAVES,
    MF_RAIN,  //20
    /* 21 - 22 free */
    MF_CLOUDS = 23,
    MF_CLOUDS2,
    MF_FIREWORKS,
    MF_GVG_CASTLE,
    MF_GVG_DUNGEON,
    MF_NIGHTENABLED,
    MF_NOBASEEXP,
    MF_NOJOBEXP,    //30
    MF_NOMOBLOOT,
    MF_NOMVPLOOT,
    MF_NORETURN,
    MF_NOWARPTO,
    MF_NIGHTMAREDROP,
    MF_ZONE,
    MF_NOCOMMAND,
    MF_NODROP,
    MF_JEXP,
    MF_BEXP,    //40
    MF_NOVENDING,
    MF_LOADEVENT,
    MF_NOCHAT,
    MF_NOEXPPENALTY,
    MF_GUILDLOCK,
    MF_TOWN,
    MF_AUTOTRADE,
    MF_ALLOWKS,
    MF_MONSTER_NOTELEPORT,
    MF_PVP_NOCALCRANK,  //50
    MF_BATTLEGROUND,
    MF_RESET,
    MF_SET_CASTLE,
    MF_NOTOMB,
    MF_NOCASHSHOP,
};

/**
 * Structures
 **/

struct Script_Config {
	unsigned warn_func_mismatch_argtypes : 1;
	unsigned warn_func_mismatch_paramnum : 1;
	int check_cmdcount;
	int check_gotocount;
	int input_min_value;
	int input_max_value;

	const char *die_event_name;
	const char *kill_pc_event_name;
	const char *kill_mob_event_name;
	const char *login_event_name;
	const char *logout_event_name;
	const char *loadmap_event_name;
	const char *baselvup_event_name;
	const char *joblvup_event_name;

	const char *ontouch_name;
	const char *ontouch2_name;
} script_config;

struct script_retinfo {
	struct DBMap *var_function;// scope variables
	struct script_code *script;// script code
	int pos;// script location
	int nargs;// argument count
	int defsp;// default stack pointer
};

struct script_data {
	enum c_op type;
	union script_data_val {
		int num;
		char *str;
		struct script_retinfo *ri;
	} u;
	struct DBMap **ref;
};

// Moved defsp from script_state to script_stack since
// it must be saved when script state is RERUNLINE. [Eoe / jA 1094]
struct script_code {
	int script_size;
	unsigned char *script_buf;
	struct DBMap *script_vars;
};

struct script_stack {
	int sp;// number of entries in the stack
	int sp_max;// capacity of the stack
	int defsp;
	struct script_data *stack_data;// stack
	struct DBMap *var_function;// scope variables
};

/* [Ind/Hercules] */
struct hQueue {
	int id;
	int *item;
	int items;/* how many actual items are in the array */
	int size;/* size of the *item array, not the current amount of items in it since it can have empty slots */
	/* events */
	char onLogOut[EVENT_NAME_LENGTH];
	char onDeath[EVENT_NAME_LENGTH];
	char onMapChange[EVENT_NAME_LENGTH];
};

struct hQueueIterator {
	int *item;
	int items;
	int pos;
};

struct script_state {
	struct script_stack *stack;
	int start,end;
	int pos;
	enum e_script_state state;
	int rid,oid;
	struct script_code *script, *scriptroot;
	struct sleep_data {
		int tick,timer,charid;
	} sleep;
	int instance_id;
	//For backing up purposes
	struct script_state *bk_st;
	unsigned char hIterator;
	int bk_npcid;
	unsigned freeloop : 1;// used by buildin_freeloop
	unsigned op2ref : 1;// used by op_2
	unsigned npc_item_flag : 1;
	unsigned mes_active : 1;  // Store if invoking character has a NPC dialog box open.
	unsigned int id;
};

struct script_reg {
	int index;
	int data;
};

struct script_regstr {
	int index;
	char *data;
};

// String buffer structures.
// str_data stores string information
struct str_data_struct {
	enum c_op type;
	int str;
	int backpatch;
	int label;
	int (*func)(struct script_state *st);
	int val;
	int next;
};


struct str_data_struct *str_data;

struct script_data* push_val(struct script_stack* stack, enum c_op type, int val, struct DBMap** ref);

static int str_data_size = 0; // size of the data
static int str_num = LABEL_START; // next id to be assigned

// str_buf holds the strings themselves
static char *str_buf;
static int str_size = 0; // size of the buffer
static int str_pos = 0; // next position to be assigned

extern int potion_flag; //For use on Alchemist improved potions/Potion Pitcher. [Skotlex]
extern int potion_hp, potion_per_hp, potion_sp, potion_per_sp;
extern int potion_target;

const char *skip_space(const char *p);
void script_error(const char *src, const char *file, int start_line, const char *error_msg, const char *error_pos);

struct script_code *parse_script(const char *src,const char *file,int line,int options);
void run_script_sub(struct script_code *rootscript,int pos,int rid,int oid, char *file, int lineno);
void run_script(struct script_code *,int,int,int);

int set_var(struct map_session_data *sd, char *name, void *val);
int conv_num(struct script_state *st,struct script_data *data);
const char *conv_str(struct script_state *st,struct script_data *data);
int run_script_timer(int tid, int64 tick, int id, intptr_t data);
void run_script_main(struct script_state *st);

void script_stop_instances(struct script_code *code);
struct linkdb_node *script_erase_sleepdb(struct linkdb_node *n);
void script_free_code(struct script_code *code);
void script_free_vars(struct DBMap *storage);
struct script_state *script_alloc_state(struct script_code *rootscript, int pos, int rid, int oid);
void script_free_state(struct script_state *st);

struct DBMap *script_get_userfunc_db(void);
void script_run_autobonus(const char *autobonus,int id, int pos);

bool script_get_constant(const char *name, int *value);
void script_set_constant(const char *name, int value, bool isparameter);

void script_detach_rid(struct script_state *st);

void script_cleararray_pc(struct map_session_data *sd, const char *varname, void *value);
void script_setarray_pc(struct map_session_data *sd, const char *varname, uint8 idx, void *value, int *refcache);

int script_config_read(char *cfgName);
void do_init_script(void);
int do_final_script(void);
int add_str(const char *p);
const char *get_str(int id);
int script_reload(void);

// @commands (script based)
void setd_sub(struct script_state *st, TBL_PC *sd, const char *varname, int elem, void *value, struct DBMap **ref);

TBL_PC *script_rid2sd(struct script_state *st);

#ifdef BETA_THREAD_TEST
void queryThread_log(char *entry, int length);
#endif
struct script_label_entry {
	int key,pos;
};

struct script_syntax_data {
	struct {
		enum curly_type type;
		int index;
		int count;
		int flag;
		struct linkdb_node *case_label;
	} curly[256];		// Information right parenthesis
	int curly_count;	// The number of right brackets
	int index;			// Number of the syntax used in the script
} syntax;

/**
 * Interface
 **/
struct script_interface {
	/* */
	DBMap *st_db;
	unsigned int equip[SCRIPT_EQUIP_TABLE_SIZE];
	unsigned int active_scripts;
	unsigned int next_id;
	struct eri *st_ers;
	struct eri *stack_ers;
	char **buildin;
	unsigned int buildin_count;
	/* */
	struct hQueue *hq;
	struct hQueueIterator *hqi;
	int hqs, hqis;
	int hqe[HQO_MAX];
	/* */
	char *word_buf;
	int word_size;
	/* */
	unsigned short current_item_id;
	/* */
	struct script_label_entry *labels;
	int label_count;
	int labels_size;
	/*  */
	void (*set_constant2) (const char *name, int value, bool isparameter);
	void (*set_constant_force) (const char *name, int value, bool isparameter);
	void (*label_add)(int key, int pos);
	void (*warning) (const char* src, const char* file, int start_line, const char* error_msg, const char* error_pos);
	/* */
	struct hQueue *(*queue) (int idx);
	bool (*queue_add) (int idx, int var);
	bool (*queue_del) (int idx);
	bool (*queue_remove) (int idx, int var);
	int (*queue_create) (void);
	void (*queue_clear) (int idx);
	const char *(*getfuncname) (struct script_state *st);
	// for ENABLE_CASE_CHECK
	struct str_data_struct *local_casecheck_str_data;
	int local_casecheck_str_data_size; // size of the data
	int local_casecheck_str_num; // next id to be assigned
	// str_buf holds the strings themselves
	char *local_casecheck_str_buf;
	int local_casecheck_str_size; // size of the buffer
	int local_casecheck_str_pos; // next position to be assigned
	int local_casecheck_str_hash[SCRIPT_HASH_SIZE];
	bool (*local_casecheck_add_str) (const char* p, int h);
	void (*local_casecheck_clear) (void);
	// end ENABLE_CASE_CHECK
};

struct script_interface *script;

void script_defaults(void);

#endif /* _SCRIPT_H_ */
