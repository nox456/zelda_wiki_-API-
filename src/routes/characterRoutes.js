import { Router } from "express";
import {
    getCharacterById,
    getCharacters,
    getCharactersByGameId,
    getCharactersByGameName,
    getCharactersByName,
    getCharactersByRaceId,
    getCharactersByRaceName
} from "../controllers/characterControllers.js";

const router = Router();

router.get("/", getCharacters);

router.get("/:id", getCharacterById);

router.get("/game/id/:game_id", getCharactersByGameId);

router.get("/game/name/:game_name", getCharactersByGameName)

router.get("/race/id/:race_id", getCharactersByRaceId);

router.get("/race/name/:race_name", getCharactersByRaceName)

router.get("/name/:text", getCharactersByName)

export default router;
