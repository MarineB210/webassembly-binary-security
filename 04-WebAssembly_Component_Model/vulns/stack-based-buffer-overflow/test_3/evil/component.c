#include "evil_world.h"
#include <stdio.h>
#include <stdint.h>

void  exports_exploit_evil_malicious_malicious(uint64_t buffer){
    printf("Injecting input in the buffer...\n");
    
        // Interpret integer (which is the memory address of the Rust array) as a pointer
        uint8_t* ptr = (uint8_t*)(uintptr_t)buffer;

        printf("Received buffer address = %p\n", (void*)ptr);

        for (int i = 0; i < 6; ++i) {
            ptr[i] = 0x41; // A in hex
        }
    
        printf("Injection complete.\n");
}

