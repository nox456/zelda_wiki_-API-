import Character from "../models/character.js";
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

export const getCharactersByGame = async (req, res) => {
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

export const getCharactersByRace = async (req, res) => {
    const { race_id } = req.params;
    let result
    try {
        result = await Character.getByRace(race_id); 
    } catch(error) {
        return serverHandler(error,res)
    }
    if (result.data.length > 0) {
        res.json(result);
    } else {
        return notFoundHandler("Personajes no encontrados!", result,res)
    }
};

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
