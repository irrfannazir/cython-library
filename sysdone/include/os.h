/* 
 * Copyright (c) 2025 Irfan Nazir
 * Licensed under the MIT License
 * See LICENSE file for details
 */


#ifndef DIR_LISTING_H
#define DIR_LISTING_H

char** get_directory_contents(int *count);
void free_directory_contents(char **contents, int count);


#endif