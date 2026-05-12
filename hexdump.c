/**********************************
** File: hexdump.c
** Project: CMSC313 Project 3
** Author: Johnathan Liu
** Date: 5/11/2026
** E-Mail: jliu13@umbc.edu
** Description: This file outputs a hex dump of the given file.
**********************************/
#include <stdio.h>
//we need this library to read the file

int main() {
	FILE *file = fopen("binary.out", "rb"); //read the file in binary mode
	unsigned char row[16];
	int count;
	long address = 0; //keeps track how far into the file we are

	while ((count = fread(row, 1, 16, file)) > 0) {
		printf("%08lx ", address);

		for (int i = 0; i < 16; i++) { //loop and print the hex
			if (i < count)
				printf("%02x ", row[i]);
			else
				printf("   ");
		}
		printf("|");
		for (int i = 0; i < count; i++) {
			if (row[i] >= 32 && row[i] < 127) //if we found a byte, print it
				printf("%c", row[i]);
			else
				printf("."); //else print dot
		}
		printf("|\n");
		address += count;
	}
}
