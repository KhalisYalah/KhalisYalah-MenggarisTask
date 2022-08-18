import {Sequelize} from "sequelize";

const db = new Sequelize('doujinpacker','root','',{

host:'localhost',
dialect:"mysql",

});

export default db;

