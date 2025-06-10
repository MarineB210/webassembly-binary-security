#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<wchar.h>

void very_secret_function() {
    printf("uid=1000(kali) gid=1000(kali) groups=1000(kali) AH got you! Wait how did you get in here anyway?");
}

void safe_function() {
    printf("Safe function executed");
}

int main(int argc, char **argv) {
    void (*function_ptr)() = safe_function; 
    // If the function is not used, optimization will leave it out of the binary
    printf("I have a very secret function right here: %p\n", &very_secret_function); 
    char buffer[4];

    strcpy(buffer, argv[1]);        

    function_ptr();
     
    return 0;
}