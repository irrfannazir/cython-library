#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#if defined(_WIN32) || defined(_WIN64)
    #define OS_WINDOWS 1
    #include <windows.h>
    #include <tchar.h>
#elif defined(__linux__)
    #define OS_LINUX 1
    #include <dirent.h>
#else
    #define OS_OTHER 1
#endif

char** get_directory_contents(int *count) {
    char **contents = NULL;
    *count = 0;

#if OS_WINDOWS
    WIN32_FIND_DATA findFileData;
    HANDLE hFind = FindFirstFile(_T("*"), &findFileData);

    if (hFind == INVALID_HANDLE_VALUE) {
        printf("Error opening directory\n");
        return NULL;
    }

    do {
        // Skip "." and ".." entries
        if (_tcscmp(findFileData.cFileName, _T(".")) == 0 || 
            _tcscmp(findFileData.cFileName, _T("..")) == 0) {
            continue;
        }

        // Allocate space for new entry
        contents = realloc(contents, (*count + 1) * sizeof(char*));
        if (!contents) {
            printf("Memory allocation failed\n");
            FindClose(hFind);
            return NULL;
        }

        // Convert TCHAR to char (assuming ASCII/ANSI)
        #ifdef UNICODE
            int size_needed = WideCharToMultiByte(CP_UTF8, 0, findFileData.cFileName, -1, NULL, 0, NULL, NULL);
            contents[*count] = malloc(size_needed);
            WideCharToMultiByte(CP_UTF8, 0, findFileData.cFileName, -1, contents[*count], size_needed, NULL, NULL);
        #else
            contents[*count] = _strdup(findFileData.cFileName);
        #endif

        (*count)++;
    } while (FindNextFile(hFind, &findFileData) != 0);

    FindClose(hFind);

#elif OS_LINUX
    DIR *dir;
    struct dirent *ent;

    if ((dir = opendir(".")) != NULL) {
        while ((ent = readdir(dir)) != NULL) {
            // Skip "." and ".." entries
            if (strcmp(ent->d_name, ".") == 0 || strcmp(ent->d_name, "..") == 0) {
                continue;
            }

            // Allocate space for new entry
            contents = realloc(contents, (*count + 1) * sizeof(char*));
            if (!contents) {
                printf("Memory allocation failed\n");
                closedir(dir);
                return NULL;
            }

            contents[*count] = strdup(ent->d_name);
            (*count)++;
        }
        closedir(dir);
    } else {
        printf("Error opening directory\n");
        return NULL;
    }

#else
    printf("Unsupported operating system\n");
    return NULL;
#endif

    return contents;
}

void free_directory_contents(char **contents, int count) {
    if (contents) {
        for (int i = 0; i < count; i++) {
            free(contents[i]);
        }
        free(contents);
    }
}