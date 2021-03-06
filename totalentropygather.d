#!/usr/sbin/dtrace -s
/* (C) 2017, W. Dean Freeman CISSP CSSLP GCIH
 * wdfreeman@ieee.org
 */

/* this pulls a hex dump of the contents of arg0 up to 580 bytes,
 * which was chosen after manual inspection of what gets fed in.
 * 580 bytes was the largest observed input.  Most of what will
 * seen is actually just 16 bytes
 */
fbt::randomdev_hash_iterate:entry {
	printf("%d", arg2);
	tracemem(arg1, 580);
}

