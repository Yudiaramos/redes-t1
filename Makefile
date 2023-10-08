# Makefile para compilar e executar servidor.py e cliente.py

# Nome dos arquivos Python
SERVER_FILE = servidor.py
CLIENT_FILE = cliente.py

# Comandos para executar os programas Python
PYTHON = python3

# Comandos para compilar e executar o servidor
SERVER_RUN = $(PYTHON) $(SERVER_FILE)

# Comandos para compilar e executar o cliente
CLIENT_RUN = $(PYTHON) $(CLIENT_FILE)

# Alvo padrão: executar o servidor e o cliente
all: servidor cliente

# Alvo para executar o servidor
servidor:
	$(SERVER_RUN)

# Alvo para executar o cliente
cliente:
	$(CLIENT_RUN)

# Alvo para limpar arquivos temporários
clean:
	# Adicione comandos para limpeza, se necessário

