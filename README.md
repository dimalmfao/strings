# StringsLib: Static String Library for C Programming

StringsLib is a lightweight static string library designed to simplify string manipulation tasks in C programming. This library provides a collection of functions and macros to handle common string operations efficiently.

## Features

- **Initialization:** Initialize strings from C-style strings or allocate memory for new strings.
- **Deallocation:** Free memory allocated for strings to prevent memory leaks.
- **Substrings:** Extract substrings from existing strings based on specified indices.
- **Concatenation:** Concatenate multiple strings together to create a new string.
- **Comparison:** Compare strings to determine their equality or relative order.
- **Search:** Search for a specific character within a string.
- **Tokenization:** Split strings into tokens based on a delimiter character.
- **Cross-Type Compatibility:** Functions and macros support various string input types, including `String`, `String*`, and `char*`.

## Usage

To use stringslib in your C project, follow these steps:

1. Include the `strlib.h` header file in your source files:

    ```c
    #include "strlib.h"
    ```

2. Compile your project with the `strlib.c` file, which contains the implementation of stringslib functions:

    ```bash
    gcc -o your_program your_program.c strlib.c
    ```

3. Start using stringslib functions and macros in your code as needed.

## Examples

### Initializing Strings

```c
String str = init_string("Hello, world!");
```

### Deallocating Strings

```c
String str = init_string("Hello, world!");
deinit_string(&str);
```

### Extracting Substrings

```c
String str = init_string("Hello, world!");
String substr = str_substring(0, 5, str);
```

### Concatenating Strings

```c
String str1 = init_string("Hello, ");
String str2 = init_string("world!");
String concatenated = str_cat(str1, str2);
```

### Comparing Strings

```c
String str1 = init_string("hello");
String str2 = init_string("world");
int result = str_compare(str1, str2);
```

### Searching for Characters

```c
String str = init_string("hello");
char* ptr = str_strchr(str, 'e');
```

### Tokenizing Strings

```c
char* input = "apple,orange,banana";
char* delim = ",";
char* token = str_tok(input, delim);
```

Feel free to contribute ;))
