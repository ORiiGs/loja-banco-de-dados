# Rodar imagem pelo powershell
docker build -t tarefas-bd .
docker run -d --name tarefas-bd -p 7000:7000 tarefas-bd

# Rodar BD
docker exec -it tarefas-bd mongosh -u admin -p admin123

#  variaveis obrigatórias

-MONGO_INITDB_DATABASE (bd onde o usuário admin será gerado), Valor padrão: "tarefas"
-MONGO_INITDB_ROOT_USERNAME (usuário admin), Valor padrão: "admin"
-MONGO_INITDB_ROOT_PASSWORD (senha do admin), Valor padrão: "admin123"


## configuráveis

<<<<<<< HEAD
-MONGODB_PORT (porta que irá rodar o BD), Valor padrão: "27017"
-MONGODB_LOJA_DATABASE (nome do BD), Valor padrão: "loja"
-MONGODB_APP_USER (usuário de teste), Valor padrão: "usertest"
-MONGODB_APP_PASSWORD (senha do usuário de teste), Valor padrão: "senhateste"

# link para dockerhub

https://hub.docker.com/repository/docker/riigs/loja-banco-de-dados/general

# docker multi stage

É utilizado uma imagem alpine para manipular scripts, então é copiado o init-mongo.js para dentro do container
Depois mantemos a imagem original do MOngoDB copiando apenas o script processado anteriormente
=======
-MONGODB_PORT (porta que irá rodar o BD), Valor padrão: "7000"
-MONGODB_LOJA_DATABASE (nome do BD), Valor padrão: "tarefas"

# link para dockerhub

MISSING
>>>>>>> 6de847e1e8b101da814820ce3d7a7d46dcfc2b02
