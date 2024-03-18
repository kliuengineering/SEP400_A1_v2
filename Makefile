# CC=g++
# CFLAGS=-I
# CFLAGS+=-Wall
# FILES=Logger.cpp
# FILES+=Automobile.cpp
# FILES+=TravelSimulator.cpp
# LIBS=-lpthread

# travel: $(FILES)
# 	$(CC) $(CFLAGS) $^ -o $@ $(LIBS)

# clean:
# 	rm -f *.o travel
	
# all: travel

CC=g++
CFLAGS=-I.
CFLAGS+=-Wall
LIBS=-lpthread

# Compile Logger, Automobile, and TravelSimulator into one executable
FILES=Logger.cpp Automobile.cpp TravelSimulator.cpp
EXECUTABLE=travel_simulator

# Server as a separate executable
SERVER_FILE=Server.cpp
SERVER_EXECUTABLE=server

all: $(EXECUTABLE) $(SERVER_EXECUTABLE)

$(EXECUTABLE): $(FILES)
	$(CC) $(CFLAGS) $^ -o $@ $(LIBS)

$(SERVER_EXECUTABLE): $(SERVER_FILE)
	$(CC) $(CFLAGS) $^ -o $@ $(LIBS)

clean:
	rm -f *.o $(EXECUTABLE) $(SERVER_EXECUTABLE) ServerLog