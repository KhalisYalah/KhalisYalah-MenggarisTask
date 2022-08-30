import {Sequelize} from "sequelize";
import db from "../config/Database.js";

const {DataTypes} = Sequelize;

const Product = db.define('product',{
    catid:DataTypes.INTEGER,
    name: DataTypes.STRING,
    image: DataTypes.STRING,
    url: DataTypes.STRING,
    shopurl: DataTypes.STRING,
    price:DataTypes.DECIMAL(20, 2),
},{
    freezeTableName: true
});

export default Product;

(async()=>{
    await db.sync();
})();