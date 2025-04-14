const DB_NAME = process.env.MONGODB_LOJA_DATABASE;

db = db.getSiblingDB('loja');

db.produtos.insertMany([
  { nome: "Camisa", Preço: 80.00 },
  { nome: "Calça", Preço: 160.00 },
]);
