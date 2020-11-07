WAYB = build/
WAYS = src/
WAYBIN = bin/


all: build bin $(WAYBIN)main

clean:
	-rm -f $(WAYBIN)main* $(WAYB)*.o

$(WAYBIN)main: $(WAYB)main.o
	g++ $(WAYB)main.o -o $(WAYBIN)main -lsfml-system -lsfml-window -lsfml-graphics -Wall -Werror -O0  

$(WAYB)main.o: $(WAYS)main.cpp
	g++ -c $(WAYS)main.cpp -g -o $(WAYB)main.o

build:
	mkdir build

bin:
	mkdir bin

.PHONY: clean