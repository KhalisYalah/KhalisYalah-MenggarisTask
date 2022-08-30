import express from "express";

import {
    getCategories,
    getCategoryById,
    saveCategory,
    updateCategory,
    deleteCategory
} from "../controllers/CategoryController.js";

const router = express.Router();

router.get('/categoriesapi', getCategories);
router.get('/categoriesapi/:id', getCategoryById);
router.post('/categoriesapi', saveCategory);
router.patch('/categoriesapi/:id', updateCategory);
router.delete('/categoriesapi/:id', deleteCategory);

export default router