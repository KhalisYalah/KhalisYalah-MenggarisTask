import {Sequelize} from "sequelize";
import db from "../config/Database.js";

const {DataTypes} = Sequelize;

const Category = db.define('category',{
    name: DataTypes.STRING,
    iconName: DataTypes.STRING,
    desc: DataTypes.STRING,
    status: DataTypes.INTEGER
},{
    freezeTableName: true
});

export default Category;

(async()=>{
    await db.sync();
})();