import { Router } from "express";
import {
    getRaces,
    getRaceById,
    getRacesByName,
    getRacesByGameId,
} from "../controllers/raceControllers.js";

const router = Router()

router.get("/", getRaces);

router.get("/:id", getRaceById);

router.get("/name/:text", getRacesByName)

router.get("/game/:game_id", getRacesByGameId)

export default router;
