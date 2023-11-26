import Enemie from "../models/enemie.js";
import Game from "../models/game.js"
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

export const getEnemieByGameId = async (req, res) => {
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

export const getEnemieByGameName = async (req,res) => {
    const { game_name } = req.params
    let result1
    let result2
    try {
        result1 = await Game.getByName(game_name)
        result2 = await Enemie.getByGame(result1.data[0].id)
    } catch (error) {
        return serverHandler(error,res) 
    }
    if (result2.data.length > 0) {
        res.json(result2)
    } else {
        return notFoundHandler("Enemigos no encontrados!", result2, res)
    }
}

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
