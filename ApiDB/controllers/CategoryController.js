import Category from "../models/CategoryModel.js";

export const getCategories = async(req, res)=>{
    try {
        const response = await Category.findAll();
        res.json(response);
    } catch (error) {
        console.log(error.message);
    }
}

export const getCategoryById = async(req, res)=>{
    try {
        const response = await Category.findOne({
            where:{
                id : req.params.id
            }
        });
        res.json(response);
    } catch (error) {
        console.log(error.message);
    }
}

export const saveCategory = async(req, res)=>{

    const name = req.body.name;
     const desc=req.body.desc;
     const iconName=reg.body.iconName;

        try {
            await Category.create({name: name, iconName:iconName,desc:desc,status:1 });
            res.status(201).json({msg: "Category Created Successfuly"});
        } catch (error) {
            console.log(error.message);
        }
    
  

}

export const updateCategory = async(req, res)=>{
    const category = await Category.findOne({
        where:{
            id : req.params.id
        }
    });
    if(!category) return res.status(404).json({msg: "No Data Found"});
    const name = req.body.name;
    const desc= reg.body.desc;
    const iconName= reg.body.iconName;
    const status= reg.body.status;
    try {
        await Category.update({name: name,desc:desc ,status: status, iconName:iconName},{
            where:{
                id: req.params.id
            }
        });
        res.status(200).json({msg: "Category Updated Successfuly"});
    } catch (error) {
        console.log(error.message);
    }

    
}

export const deleteCategory = async(req, res)=>{
    const product = await Category.findOne({
        where:{
            id : req.params.id
        }
    });
    if(!product) return res.status(404).json({msg: "No Data Found"});

    try {
        await Category.destroy({
            where:{
                id : req.params.id
            }
        });
        res.status(200).json({msg: "Category Deleted Successfuly"});
    } catch (error) {
        console.log(error.message);
    }
}