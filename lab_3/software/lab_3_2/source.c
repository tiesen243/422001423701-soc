/*
 * source.c
 *
 *  Created on: Jan 13, 2026
 *      Author: tiesen243
 */

#include <system.h>

int main() {
	volatile short * LED_ptr = (short *) LED_0_BASE;
	volatile short * SW_ptr = (short *) SWITCH_0_BASE;

	short tmp;

	while (1) {
		tmp = *SW_ptr;
		*LED_ptr = tmp;
	}
}



