import Race from "../models/race.js";
import Game from "../models/game.js"
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
        result = await Race.getByGame(game_id);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Razas no encontrada!", result, res);
    }
};

export const getRacesByGameName = async (req,res) => {
    const { game_name } = req.params
    let result1
    let result2
    try {
        result1 = await Game.getByName(game_name)
        result2 = await Race.getByGame(result1.data[0].id)
    } catch (error) {
        return serverHandler(error, res)
    }
    if (result2.data.length > 0) {
        res.json(result2)
    } else {
        return notFoundHandler("Razas no encontradas!", result2, res)
    }
}
