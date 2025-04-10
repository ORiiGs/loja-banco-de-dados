const DB_NAME = process.env.MONGODB_LOJA_DATABASE;
const APP_USER = process.env.MONGODB_APP_USER;
const APP_PASS = process.env.MONGODB_APP_PASSWORD;

db = db.getSiblingDB('loja');

db.createUser({
  user: 'userteste',
  pwd: 'senhateste',
  roles: [{ role: 'readWrite', db: 'loja' }]
});

db.produtos.insertMany([
  { nome: "Camisa", preco: 80.00 },
  { nome: "Calça", preco: 120.00 }
]);