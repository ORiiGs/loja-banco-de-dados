# loja-banco-de-dados
Banco de dados MongoDB para a loja

# Construção da Imagem
|powershell|
docker build -t loja-banco-de-dados .
docker run -d --name loja-banco-de-dados -p 27017:27017 loja-banco-de-dados

# Rodar BD
|powershell|
docker exec -it loja-banco-de-dados mongosh -u admin -p admin123

# Variáveis de Ambiente
## obrigatórias

-MONGO_INITDB_ROOT_USERNAME (usuário admin do BD), Valor padrão: "admin"
-MONGO_INITDB_ROOT_PASSWORD (senha do admin do BD), Valor padrão: "admin123"
-MONGO_INITDB_DATABASE (banco onde o usuário admin será gerado), Valor padrão: "loja"

## configuráveis

-MONGODB_PORT (porta que irá rodar o BD), Valor padrão: "27017"
-MONGODB_LOJA_DATABASE (nome do BD), Valor padrão: "loja"
-MONGODB_APP_USER (usuário de teste), Valor padrão: "usertest"
-MONGODB_APP_PASSWORD (senha do usuário de teste), Valor padrão: "senhateste"

# link para dockerhub

https://hub.docker.com/repository/docker/riigs/loja-banco-de-dados/general

# docker multi stage

É utilizado uma imagem alpine para manipular scripts, então é copiado o init-mongo.js para dentro do container
Depois mantemos a imagem original do MOngoDB copiando apenas o script processado anteriormente