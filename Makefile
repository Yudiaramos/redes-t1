# Makefile para compilar e executar servidor e clientes

# Comandos para compilação
CC = gcc
CFLAGS = -Wall

# Nomes dos executáveis
SERVER = servidor
CLIENT1 = cliente1
CLIENT2 = cliente2

all: $(SERVER) $(CLIENT1) $(CLIENT2)

$(SERVER): servidor.c
	$(CC) $(CFLAGS) -o $@ $< -lpthread

$(CLIENT1): cliente.c
	$(CC) $(CFLAGS) -o $@ $<

$(CLIENT2): cliente.c
	$(CC) $(CFLAGS) -o $@ $<

run-server: $(SERVER)
	./$(SERVER)

run-client1: $(CLIENT1)
	./$(CLIENT1)

run-client2: $(CLIENT2)
	./$(CLIENT2)

run: run-server run-client1 run-client2

clean:
	rm -f $(SERVER) $(CLIENT1) $(CLIENT2)

