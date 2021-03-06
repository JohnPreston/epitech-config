;; Skeleton des headers protege
(define-skeleton insert-protect-header
  "Inserts a define to protect the header file."
  ""
  '(setq str (file-name-sans-extension
          (file-name-nondirectory (buffer-file-name))))
  "#ifndef\t\t\t__"(upcase str)"_H__\n"
  "# define\t\t__"(upcase str)"_H__\n"
  "\n"
  "\n"
  "\n"
  "#endif\t\t\t/* !__"(upcase str)"_H__ */\n")
 
;; Skeleton des Makefiles
(define-skeleton create-makefile
  "Create a Makefile."
  ""
  "NAME\t\t=\t\t\n"
  "\n"
  "SRCDIR\t\t=\t\t./src/\n"
  "HDDIR\t\t=\t\t./include/\n"
  "LDDIR\t\t=\t\t./lib/\n"
  "\n"
  "SRCS\t\t=\t\t$(SRCDIR)\n"
  "\n"
  "\n"
  "OBJS\t\t=\t\t$(SRCS:.c=.o)\n"
  "CC\t\t=\t\t/usr/bin/gcc\n"
  "CFLAGS\t\t=\t\t-W -Wall -Wextra\n"
  "HDFLAGS\t\t+=\t\t-I$(HDDIR)\n"
  "\n"
  "RM\t\t=\t\trm -f\n"
  "ECHO\t\t=\t\techo -e\n"
  "TAG\t\t=\t\tetags"
  "\n"
  "$(NAME)\t\t: $(OBJS)\n"
  "\t\t@$(CC) $(CFLAGS) $(HDFLAGS) -o $(NAME) $(OBJS)\n"
  "\t\t@$(ECHO) '\\033[0;32m> Compiled Without Error\\033[0m'\n"
  "\n"
  "clean\t\t:\n"
  "\t\t-@$(RM) $(OBJS)\n"
  "\t\t-@$(RM) *~\n"
  "\t\t-@$(RM) \#*\#\n"
  "\t\t@$(ECHO) '\\033[0;35m> Directory cleaned\\033[0m'\n"
  "\n"
  "all\t\t: $(NAME)\n"
  "\n"
  "fclean\t\t: clean\n"
  "\t\t-@$(RM) $(NAME)\n"
  "\t\t@$(ECHO) '\\033[0;35m> Remove executable\\033[0m'\n"
  "\n"
  "re\t\t: fclean all\n"
  "\n"
  ".PHONY\t\t: all clean re fclean tag debug\n"
  "\n"
  "tag\t\t:\n"
  "\t\t-@$(TAG) $(SRCS)\n"
  "\t\t@$(ECHO) '\\033[0;32m> TAGS Done\\033[0m'\n"
  "\n"
  ".c.o\t\t:\n"
  "\t\t$(CC) $(HDFLAGS) $(CFLAGS) -c $< -o $@<\n"
  "\n")