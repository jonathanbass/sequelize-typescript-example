import { Sequelize } from 'sequelize-typescript';

export const sequelize = new Sequelize({
  username: 'sa',
  password: 'XXX',
  host: 'localhost',
  dialect: 'mssql',
  dialectOptions: {
    port: 1433
  },
  database: 'cinema',
  modelPaths: [__dirname + '/models']
});
