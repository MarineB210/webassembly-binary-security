#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int global_var = 42;
char global_str[] = "Global String";

void allocate_memory() {
    char *heap_var = malloc(64);
    if (heap_var == NULL) {
        perror("malloc failed");
        return;
    }

    strcpy(heap_var, "This is a string in heap memory.");

    printf("Heap variable address: \n");
    printf("Heap variable value: \n");
    free(heap_var);
}

void function_with_stack_variable() {
    int stack_var = 100;
    printf("Stack variable address: \n");
    printf("Stack variable value:  \n");
}

int main() {
    printf("Starting\n");
    int local_var = 24;
    char local_string[12] = "Local String";
    float local_float = 2.5;
    static int static_var = 54;

    printf("Global variable address: \n");
    printf("Global string address: \n");
    printf("Local int variable address: \n");
    printf("Local string address: \n");
    printf("Local float variable address: \n");
    printf("Static variable address: \n");

    function_with_stack_variable();
    allocate_memory();

    return 0;
}

