#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>

extern size_t ft_strlen(char *str);
extern ssize_t ft_write(int fd, const void *buf, size_t count);

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

int main() {
    char *str = "Hello World\n";
    size_t rtn = ft_write(1, str, strlen(str));
    printf("ft_write: %ld\n", rtn);
    printf("ft_write errno: %d\n", errno);
    
    rtn = write(1, str, strlen(str));
    printf("write: %ld\n", rtn);
    printf("write errno: %d\n", errno);

    ft_write(-1, "test", 4);
    printf("ft_write errno: %d\n", errno);
    write(-1, "test", 4);
    printf("write errno: %d\n", errno);
    return 0;
}