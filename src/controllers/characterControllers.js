import Character from "../models/character.js";
import Race from "../models/race.js"
import Game from "../models/game.js"
import { notFoundHandler, serverHandler } from "../lib/errorsHandlers.js";

export const getCharacters = async (req, res) => {
    let result;
    try {
        result = await Character.getAll();
    } catch (error) {
        return serverHandler(error, res);
    }
    res.json(result);
};

export const getCharacterById = async (req, res) => {
    const { id } = req.params;
    let result;
    try {
        result = await Character.getById(id);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data) {
        res.json(result);
    } else {
        return notFoundHandler("Personaje no encontrado!", result, res);
    }
};

export const getCharactersByGameId = async (req, res) => {
    const { game_id } = req.params;
    let result;
    try {
        result = await Character.getByGame(game_id);
    } catch (error) {
        return serverHandler(error, res);
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Personajes no encontrados!", result, res);
    }
};

export const getCharactersByGameName = async (req,res) => {
    const { game_name } = req.params
    let result1
    let result2
    try {
        result1 = await Game.getByName(game_name)
        result2 = await Character.getByGame(result1.data[0].id)
    } catch (error) {
        return serverHandler(error, res)
    }
    if (result2.data.length > 0) {
        res.json(result2)
    } else {
        return notFoundHandler("Personajes no encontrados!", result2, res)
    }
}

export const getCharactersByRaceId = async (req, res) => {
    const { race_id } = req.params;
    let result
    try {
        result = await Character.getByRaceId(race_id); 
    } catch(error) {
        return serverHandler(error,res)
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Personajes no encontrados!", result,res)
    }
};

export const getCharactersByRaceName = async (req,res) => {
    const { race_name } = req.params
    let result1
    let result2
    try {
        result1 = await Race.getByName(race_name)
        result2 = await Character.getByRace(result1.data[0].id)
    } catch(error) {
        return serverHandler(error,res)
    }
    if (result2.data.length > 0) {
        res.json(result2)
    } else {
        return notFoundHandler("Personajes no encontrados!",result2,res)
    }
}

export const getCharactersByName = async (req, res) => {
    const { text } = req.params;
    let result
    try {
        result = await Character.getByName(text);
    } catch (error) {
        return serverHandler(error,res)
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        notFoundHandler("Personajes no encontrados!",result,res)
    }
};
