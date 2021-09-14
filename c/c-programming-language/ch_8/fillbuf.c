/*
 * src/ch_8/fopen.c
 *
 * 2019/3/1
 */
 
#include "syscalls.h"


int _fillbuf(FILE *fp)
{
	int bufsize;
	
	if ((fp->flag&(_READ | _EOF | _ERR)) != _READ) {
		return EOF;
	}
	bufsize = (fp->flag & _UNBUF) ? 1 : BUFSIZE;
	if (fp->base == NULL) {
		if ((fp->base = (char *)malloc(bufsize)) == NULL) {
			return EOF;
		}
	}
	fp->ptr = fp->base;
	fp->cnt = read(fp->fd, fp->ptr, bufsize);
	if (--fp->cnt < 0) {
		if (fp->cnt == -1) {
			fp->flag |= _EOF;
		} else {
			fp->flag |= _ERR;
		}
		fp->cnt = 0;
		return EOF;
	}
	return (unsigned char) *fp->ptr++;
}