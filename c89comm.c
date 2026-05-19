#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
    FILE* file;
    char buffer[255];

    if (argc == 1) {
        printf("No file path provided\n");
        return 0;
    }

    file = fopen(argv[1], "r");
    if (file == NULL) {
        printf("Failed to open file\n");
        return -1;
    }

    while (fgets(buffer, 255, file)) {
        printf("%s", buffer);
    }

    fclose(file);

    return 0;
}
