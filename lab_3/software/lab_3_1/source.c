/*
 * source.c
 *
 *  Created on: Jan 14, 2026
 *      Author: tiesen243
 */

#include <system.h>
#include <io.h>

int main() {
	short tmp;

	while (1) {
		tmp = IORD(SWITCH_BASE, 0);
		IOWR(LED_BASE, 0, tmp);
	}

	return 0;
}
