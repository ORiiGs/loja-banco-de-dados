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

-MONGODB_PORT (porta que irá rodar o BD), Valor padrão: "7000"
-MONGODB_LOJA_DATABASE (nome do BD), Valor padrão: "tarefas"

# link para dockerhub

MISSING
