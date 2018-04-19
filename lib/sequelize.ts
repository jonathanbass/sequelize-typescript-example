import { Sequelize } from 'sequelize-typescript';

export const sequelize = new Sequelize({
  dialect: 'mssql',
  username: 'sa',
  password: 'xxxx',
  dialectModulePath: 'sequelize-msnodesqlv8',
  dialectOptions: {
    instanceName: '(localdb)\MSSQLLocalDB',
    trustedConnection: true
  },
  host: 'localhost',
  database: 'test-db',
  modelPaths: [__dirname + '/models']
});
