PROG = Test
CC = g++

CAPPFLAGS = -g -Wall -I/Users/developer/Desktop/projects/languages/test_projects/cplusplus/assignment_git/declarations-definitions-2018-06-12-vandevelden
LDFLAGS = -L/Users/developer/Desktop/projects/languages/test_projects/cplusplus/assignment_git/declarations-definitions-2018-06-12-vandevelden

OBJS = main.o utility.o
$(PROG) : $(OBJS)
	$(CC) $(LDFLAGS) -o $(PROG) $(OBJS)
main.o : utility.h
	$(CC) $(CPPFLAGS) -c main.cpp
utility.o : utility.h
	$(CC) $(CPPFLAGS) -c utility.cpp

clean:
	rm -f core $(PROG) $(OBJS)


