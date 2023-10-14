import Race from "../models/race.js";
import { notFoundHandler, serverHandler } from "../lib/errorsHandlers.js";

export const getRaces = async (req, res) => {
    let result;
    try {
        result = await Race.getAll();
    } catch (error) {
        return serverHandler(error, res);
    }
    res.json(result);
};

export const getRaceById = async (req, res) => {
    const { id } = req.params;
    let result;
    try {
        result = await Race.getById(id);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data) {
        res.json(result);
    } else {
        return notFoundHandler("Raza no encontrada!", result, res);
    }
};

export const getRacesByName = async (req, res) => {
    const { text } = req.params;
    let result;
    try {
        result = await Race.getByName(text);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Razas no encontradas!", result, res);
    }
};

export const getRacesByGameId = async (req, res) => {
    const { game_id } = req.params;
    let result;
    try {
        result = await Race.getByGameId(game_id);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Razas no encontrada!", result, res);
    }
};
