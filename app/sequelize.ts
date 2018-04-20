import { Sequelize } from 'sequelize-typescript';

export const sequelize = new Sequelize({
  username: 'sa',
  password: 'Bd6320db-8C90-4942',
  host: 'localhost',
  dialect: 'mssql',
  dialectOptions: {
    port: 1433
  },
  database: 'cinema',
  modelPaths: [__dirname + '/models']
});
