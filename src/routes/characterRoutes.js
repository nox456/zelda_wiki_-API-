import { Router } from "express";
import {
    getCharacterById,
    getCharacters,
    getCharactersByGame,
    getCharactersByName,
    getCharactersByRace,
} from "../controllers/characterControllers.js";

const router = Router();

router.get("/", getCharacters);

router.get("/:id", getCharacterById);

router.get("/game/:game_id", getCharactersByGame);

router.get("/race/:race_id", getCharactersByRace);

router.get("/name/:text", getCharactersByName)

export default router;
