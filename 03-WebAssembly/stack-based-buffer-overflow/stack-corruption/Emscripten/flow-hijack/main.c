#include<emscripten.h>
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<stdint.h>
#include<wchar.h>

// Function based on the one provided in the paper of reference "Everything Old is New Again: Binary Security of WebAssembly".
void exec_ls() {
    EM_ASM({
        require("child_process").execSync("ls", { stdio: 'inherit' });
    });
}

void safe_function() {
    printf("It's way too chill in here...\n");
}


int main(int argc, char **argv) {
    void (*function_ptr)() = safe_function; 
    // If the function is not used, optimization made during compilation will leave it out of the binary
    printf("I have a function so coooool right here: %p\n", &exec_ls);

    char buffer[4];
    scanf("%s", buffer);

    function_ptr();
     
    return 0;
}