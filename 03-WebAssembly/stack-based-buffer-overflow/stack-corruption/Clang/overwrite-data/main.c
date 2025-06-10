#include <stdio.h>
#include <string.h>

void restricted_area() {
    printf("Access Granted to the cool kids area!\n");
}

void check_secret() {
    char secret[13] = "letmein12345"; 
    char input[13];       

    printf("Enter the secret: \n");
    scanf("%s", input);    // gets does not check if input is of right size or not.

    if (strcmp(secret, input) == 0) {
        restricted_area();
    } else {
        printf("Access Denied.\n");
    }
}

int main() {
    check_secret();
    return 0;
}
