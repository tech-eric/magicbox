#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "common.h"
#include "cmd.h"

/* 命令列表*/
cmdDef cmd_list[CMD_MAX_NUM] = {NULL};
u16 cmd_num = 0;

int cmd_register()
{

}

int cmd_deregister()
{


}

int cmd_run(int argc, char *argv[])
{
    int i;

    for(i=0; i < CMD_MAX_NUM && cmd_list[i].name && cmd_list[i].func; i++)
    {
        if(!strncmp(cmd_list[i].name, argv[0], strlen(cmd_list[i].name)))
        {
            printf("ok");
            cmd_list[i].func(argc, argv);
            return 0;
        }
    }

    return -1;
}


int cmd_init(void)
{
    return 0;
}

