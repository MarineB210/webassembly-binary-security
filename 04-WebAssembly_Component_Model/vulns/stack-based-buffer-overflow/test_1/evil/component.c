#include "evil_world.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

void exports_exploit_evil_malicious_malicious(evil_world_list_u8_t *value){
    uint8_t overflow[] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1};

    memcpy(value->ptr, overflow, sizeof(overflow));
    value->len = sizeof(overflow);

    printf("overflow buffer: ");
    for (size_t i = 0; i < sizeof(overflow); i++) {
        printf("%02x ", overflow[i]);
    }
    printf("\n");

    printf("value->ptr buffer: ");
    for (size_t i = 0; i < value->len; i++) {
        printf("%02x ", value->ptr[i]);
    }
    printf("\n");
}
