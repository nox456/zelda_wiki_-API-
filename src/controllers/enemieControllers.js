import Enemie from "../models/enemie.js";
import { notFoundHandler, serverHandler } from "../lib/errorsHandlers.js";

export const getEnemies = async (req, res) => {
    let result;
    try {
        result = await Enemie.getAll();
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Enemigos no encontrados!", result, res);
    }
};

export const getEnemieById = async (req, res) => {
    const { id } = req.params;
    let result;
    try {
        result = await Enemie.getById(id);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data) {
        res.json(result);
    } else {
        return notFoundHandler("Enemigo no encontrado!", result, res);
    }
};

export const getEnemieByGame = async (req, res) => {
    const { game_id } = req.params;
    let result;
    try {
        result = await Enemie.getByGame(game_id);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Enemigos no encontrados!", result, res);
    }
};

export const getEnemiesByCategory = async (req, res) => {
    const { category } = req.params;
    let result;
    try {
        result = await Enemie.getByCategory(category);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Enemigos no encontrados!", result, res);
    }
};

export const getEnemiesByName = async (req, res) => {
    const { text } = req.params;
    let result;
    try {
        result = await Enemie.getByName(text);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Enemigos no encontrados!", result, res);
    }
};
