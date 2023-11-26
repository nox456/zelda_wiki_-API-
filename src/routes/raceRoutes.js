import { Router } from "express";
import {
    getRaces,
    getRaceById,
    getRacesByName,
    getRacesByGameId,
    getRacesByGameName
} from "../controllers/raceControllers.js";

const router = Router()

router.get("/", getRaces);

router.get("/:id", getRaceById);

router.get("/name/:text", getRacesByName)

router.get("/game/id/:game_id", getRacesByGameId)

router.get("/game/name/:game_name", getRacesByGameName)

export default router;
