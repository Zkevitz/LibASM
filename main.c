#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>

extern size_t ft_strlen(char *str);
extern ssize_t ft_write(int fd, const void *buf, size_t count);
extern char *ft_strcpy(char *dest, char *src);
extern int ft_strcmp(char *s1, char *s2);
extern ssize_t ft_read(int fd, void *buf, size_t count);

// Test ft_strlen
// int main() {
//     char *str = "Hello World";

//     printf("1 : %zu\n", ft_strlen(str));
//     printf("1 : %zu\n", strlen(str));

//     printf("2 : %zu\n", ft_strlen(""));
//     printf("2 : %zu\n", strlen(""));

//     printf("3 : %zu\n", ft_strlen("a"));
//     printf("3 : %zu\n", strlen("a"));

//     printf("4 : %zu\n", ft_strlen("abcdef"));
//     printf("4 : %zu\n", strlen("abcdef"));
//     return 0;
// }

// Test ft_write
// int main() {
//     char *str = "Hello World\n";
   
//     size_t rtn = ft_write(1, str, strlen(str));
//     printf("ft_write: %ld\n", rtn);
//     printf("ft_write errno: %d\n", errno);
    
//     rtn = write(1, str, strlen(str));
//     printf("write: %ld\n", rtn);
//     printf("write errno: %d\n", errno);

//     ft_write(-1, "test", 4);
//     printf("ft_write errno: %d\n", errno);
//     write(-1, "test", 4);
//     printf("write errno: %d\n", errno);
//     return 0;
// }

// Test ft_strcpy
// int main() {
//     char dest[100];
//     char dest2[100];
//     char *src = "Hello World";
//     char *src2 = "";
    
//     ft_strcpy(dest, src);
//     printf("ft_strcpy: %s\n", dest);

//     ft_strcpy(dest, src2);
//     printf("ft_strcpy2: %s\n", dest);
    
//     strcpy(dest2, src);
//     printf("strcpy: %s\n", dest2);

//     strcpy(dest2, src2);
//     printf("strcpy2: %s\n", dest2);
//     return 0;
// }

// // Test ft_strcmp
// int main() {
//     char str1[] = "Bonjour";
//     char str2[] = "Bonsoir";

//     int result = ft_strcmp(str1, str2);
//     printf("ft_strcmp: %d\n", result);

//     result = strcmp(str1, str2);
//     printf("strcmp: %d\n", result);

//     if (result == 0) {
//         printf("Les chaînes sont identiques.\n");
//     } else if (result < 0) {
//         printf("\"%s\" est avant \"%s\" dans l'ordre lexicographique.\n", str1, str2);
//     } else {
//         printf("\"%s\" est après \"%s\" dans l'ordre lexicographique.\n", str1, str2);
//     }
//     return 0;
// }


// Test ft_read
int main(){
    int fd = open("test.txt", O_RDONLY);
    if (fd < 0) {
        printf("Error opening file\n");
        return 1;
    }
    char buf[150];
    ssize_t rtn = ft_read(fd, buf, 150);
    printf("ft_read: %ld\n", rtn);
    printf("ft_read errno: %d\n", errno);
    close(fd);
    
    fd = open("test.txt", O_RDONLY);
    if (fd < 0) {
        printf("Error opening file\n");
        return 1;
    }
    rtn = read(fd, buf, 150);
    printf("read: %ld\n", rtn);
    printf("read errno: %d\n", errno);
    close(fd);
    return 0;
}