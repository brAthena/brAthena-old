#include <sys/time.h>
#include <time.h>
#include <unistd.h>

int main(void) {
	struct timespec tval;
	return clock_gettime(CLOCK_MONOTONIC, &tval);
}