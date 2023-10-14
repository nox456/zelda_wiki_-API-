import Game from "../models/game.js";
import { notFoundHandler, serverHandler } from "../lib/errorsHandlers.js";

export const getGames = async (req, res) => {
    let result;
    try {
        result = await Game.getAll();
    } catch (error) {
        return serverHandler(error, res);
    }
    res.json(result);
};

export const getGameById = async (req, res) => {
    const { id } = req.params;
    let result;
    try {
        result = await Game.getById(id);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data) {
        res.json(result);
    } else {
        return notFoundHandler("Juego no encontrado!", result, res);
    }
};

export const getGameByName = async (req, res) => {
    const { text } = req.params;
    let result;
    try {
        result = await Game.getByName(text);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Juegos no encontrados!", result, res);
    }
};

export const getGameByConsoleId = async (req, res) => {
    const { console_id } = req.params;
    let result;
    try {
        result = await Game.getByConsoleId(console_id);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Juegos no encontrados!", result, res);
    }
};
