#include "use_resource.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void exports_resources_creator_operate_buffer_modify_buffer(void){

    const char *original = "Hello, heap!";
    
    char *heap_string = (char *)malloc(strlen(original) + 1);

    if (heap_string == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
    }

    strcpy(heap_string, original);

    char stack_string[] = "I'm a string on the stack";

    resources_creator_create_resource_own_buffer_t owned = resources_creator_create_resource_constructor_buffer();

    resources_creator_create_resource_borrow_buffer_t borrowed = resources_creator_create_resource_borrow_buffer(owned);

    uint8_t real_data[6] = { 'H', 'E', 'L', 'L', 'O', '!'};

    printf("[B] Pointer to real_data in B: %p\n", (void*)real_data);

    use_resource_list_u8_t payload = {
        .ptr = real_data,
        .len = 6
    };

    resources_creator_create_resource_method_buffer_write(borrowed, &payload);

}