#include <stdio.h>
#include <stdlib.h>

#define MAX_FILENAME_LENGTH 100

int main(int argc, char *argv[]) {
    FILE *inputFile, *outputFile;
    char inputFileName[MAX_FILENAME_LENGTH], outputFileName[MAX_FILENAME_LENGTH];
    char currentChar;

    // Check if the correct number of command line arguments is provided
    if (argc != 3) {
        fprintf(stderr, "Usage: %s <input_file> <output_file>\n", argv[0]);
        return 1;
    }

    // Copy input and output filenames from command line arguments
    snprintf(inputFileName, MAX_FILENAME_LENGTH, "%s", argv[1]);
    snprintf(outputFileName, MAX_FILENAME_LENGTH, "%s", argv[2]);

    // Open input file for reading
    inputFile = fopen(inputFileName, "r");
    if (inputFile == NULL) {
        perror("Error opening input file");
        return 2;
    }

    // Open output file for writing
    outputFile = fopen(outputFileName, "w");
    if (outputFile == NULL) {
        perror("Error opening output file");
        fclose(inputFile);
        return 3;
    }

    // Process each character in the file
    while ((currentChar = fgetc(inputFile)) != EOF) {
        // Check for newline character
        if (currentChar == '\n') {
            // Replace newline with "%newline%"
            fputs("%newline%", outputFile);
        } else {
            // Write character as is
            fputc(currentChar, outputFile);
        }
    }

    // Close the files
    fclose(inputFile);
    fclose(outputFile);

    printf("File processing complete. Check the output file: %s\n", outputFileName);

    return 0;
}
