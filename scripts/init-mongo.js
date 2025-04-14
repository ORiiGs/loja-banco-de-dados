const DB_NAME = process.env.MONGODB_LOJA_DATABASE;

db = db.getSiblingDB('tarefas');

db.produtos.insertMany([
  { nome: "Tarefa 1", Qt_Questoes: 12, dificuldade: "3/5" },
  { nome: "Tarefa 2", Qt_Questoes: 7, dificuldade: "2/5" },
  { nome: "Tarefa 3", Qt_Questoes: 18, dificuldade: "5/5" },
]);