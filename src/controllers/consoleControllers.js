import Console from "../models/console.js";
import { notFoundHandler, serverHandler } from "../lib/errorsHandlers.js";

export const getConsoles = async (req, res) => {
    let result;
    try {
        result = await Console.getAll();
    } catch (error) {
        return serverHandler(error, res);
    }
    res.json(result);
};

export const getConsoleById = async (req, res) => {
    const { id } = req.params;
    let result;
    try {
        result = await Console.getById(id);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data) {
        res.json(result);
    } else {
        return notFoundHandler("Consola no encontrada!", result, res);
    }
};

export const getConsoleByGame = async (req, res) => {
    const { game_id } = req.params;
    let result;
    try {
        result = await Console.getByGame(game_id);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data) {
        res.json(result);
    } else {
        return notFoundHandler("Consola no encontrada!", result, res);
    }
};

export const getConsoleByName = async (req, res) => {
    const { text } = req.params;
    let result;
    try {
        result = await Console.getByName(text);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Consolas no encontradas!", result, res);
    }
};
