FROM mongo:7.0

# Variaveis obrigatorias
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=admin123
ENV MONGO_INITDB_DATABASE=tarefas

# Variaveis configuraveis
ENV MONGODB_PORT=7000
ENV MONGODB_TAREFAS_DATABASE=tarefas


#comando para iniciar o mongo com "--auth" para habilitar a autenticação
CMD ["mongod", "--auth"]