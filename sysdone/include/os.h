#ifndef DIR_LISTING_H
#define DIR_LISTING_H

char** get_directory_contents(int *count);
void free_directory_contents(char **contents, int count);


#endif