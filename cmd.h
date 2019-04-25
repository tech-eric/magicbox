#ifndef __CMD_H
#define __CMD_H

#define CMD_MAX_NUM   100

typedef int (*cmdType)(int argc, char *argv[]);

typedef struct
{
    char *name;
    cmdType func;
}cmdDef;


int cmd_run(int argc, char *argv[]);

#endif

