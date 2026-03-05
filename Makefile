NASM = nasm 
LINKER = ld
AR = ar


NASMFLAGS = -f elf64
LDFLAGS = -static
ARFLAGS = rcs

LIBNAME = libasm.a
SRCDIR = src
OBJDIR = obj

SRC = ft_strlen.s \
		ft_write.s
OBJ = $(SRC:%.s=$(OBJDIR)/%.o)


all : $(LIBNAME)

$(LIBNAME) : $(OBJ)
	$(AR) $(ARFLAGS) $(LIBNAME) $(OBJ)

$(OBJDIR):
	mkdir -p $(OBJDIR)

$(OBJDIR)/%.o: $(SRCDIR)/%.s | $(OBJDIR)
	$(NASM) $(NASMFLAGS) $< -o $@

clean :
	rm -rf $(OBJDIR)

fclean : clean
	rm -f $(LIBNAME)

re : fclean all