#include <stdio.h>
#include "common.h"
#include "cmd.h"


int main(int argc, char *argv[])
{
    int ret = 0;

    ret = cmd_run(argc, argv);
    if(ret){
        printf("Unknown Cmd!!!\n");
    }

    return 0;
}
