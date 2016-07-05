TARGET:=ngrokc

OBJ:=main.o sendmsg.o openssldl.o cJSON.o nonblocking.o sslbio.o ngrok.o
CFLAGS+= -Wall -fexceptions -DOPENSSL=1 -DOPENSSLDL=1  -O2

all:clean $(TARGET)
CXX:=g++
%.o:%.c
	$(CXX) -c -o $@ $< $(CFLAGS) $(LDFLAGS) 

$(TARGET):$(OBJ)
	$(CXX) -o $@ $(OBJ) $(CFLAGS) $(LDFLAGS) -ldl

clean:
	rm -f *.o $(TARGET)
