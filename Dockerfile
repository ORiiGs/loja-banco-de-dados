# ESTÁGIO DE PREPARAÇÃO DE SCRIPTS

FROM alpine:3.18 as builder

# Define o diretório de trabalho
WORKDIR /app
# copia os scripts do mongoDB par a imagem
COPY scripts/init-mongo.js .
# a validação de scripts é feita caso necessário devido ao multi stage)

# ESTÁGIO DE PRODUÇÃO DA IMAGEM

FROM mongo:7.0

# Variáveis obrigatórias
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=admin123
ENV MONGO_INITDB_DATABASE=loja

# Variáveis configuráveis
ENV MONGODB_PORT=27017
ENV MONGODB_LOJA_DATABASE=loja
ENV MONGODB_APP_USER=usertest
ENV MONGODB_APP_PASSWORD=senhateste

# copia o script já pronto diretamente para o diretório de inicialização
COPY --from=builder /app/init-mongo.js /docker-entrypoint-initdb.d/

#comando de inicialização do mongo, auth habilita a autenticação e bind_ip_all permite conexões de qualquer endereço, utilizado para facilitar alguns testes
CMD ["mongod", "--auth", "--bind_ip_all"]
# Tudo devidamente otimizado e com um possível multi stage