#include "common.h"
#include "cmd.h"
#include "autoconf.h"

#ifdef CONFIG_TEXT_TOOL
extern int hexdump(int argc, char* argv[]);
#endif

/* 命令列表*/
cmdDef cmd_list[CMD_MAX_NUM] =
{

#ifdef CONFIG_TEXT_TOOL
    {"./hexdump", hexdump},
#endif
    NULL,
};

int cmd_run(int argc, char *argv[])
{
    int i;

    for(i=0; i < CMD_MAX_NUM && cmd_list[i].name && cmd_list[i].func; i++)
    {
        if(!strncmp(cmd_list[i].name, argv[0], strlen(cmd_list[i].name)))
        {
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

