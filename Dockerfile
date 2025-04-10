FROM mongo:7.0

#variáveis obrigatorias
ENV MONGO_INITDB_ROOT_USERNAME=admin
ENV MONGO_INITDB_ROOT_PASSWORD=admin123
ENV MONGO_INITDB_DATABASE=loja

#variáveis configuráveis
ENV MONGODB_PORT=27017
ENV MONGODB_LOJA_DATABASE=loja
ENV MONGODB_APP_USER=usertest
ENV MONGODB_APP_PASSWORD=senhateste

COPY scripts/init-mongo.js /docker-entrypoint-initdb.d/

CMD ["mongod", "--auth", "--bind_ip_all"]