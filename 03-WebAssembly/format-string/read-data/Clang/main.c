#include <stdio.h>
#include <string.h>

void vuln(char* exploit){
    printf(exploit);
}


int main(int argc, char *argv[]) {

    vuln(argv[1]);

    return 0;
}
