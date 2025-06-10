#include <stdio.h>
#include <stdlib.h>

int main() {
    char buf[32];

    scanf("%[^\n]", buf); 

    FILE *f = fopen("file.txt", "w");
    if (f == NULL) {
        perror("Failed to open file");
        return 1;
    }
    fprintf(f, "DON'T PRESS THE NUKE BUTTON! I REPEAT, DO NOT PRESS THE NUKE BUTTON!\n");
    fclose(f);

    return 0;
}
