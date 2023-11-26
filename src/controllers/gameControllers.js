import Game from "../models/game.js";
import Console from "../models/console.js"
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
        result = await Game.getByConsole(console_id);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Juegos no encontrados!", result, res);
    }
};

export const getGameByConsoleName = async (req,res) => {
    const { console_name } = req.params
    let result1
    let result2
    try {
        result1 = await Console.getByName(console_name)
        result2 = await Game.getByConsole(result1.data[0].id)
    } catch (error) {
        return serverHandler(error, res)
    }
    if (result2.data.length > 0) {
        res.json(result2)
    } else {
        return notFoundHandler("Juegos no encontrados!", result2, res)
    }
}
