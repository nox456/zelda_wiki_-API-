import { Router } from "express";
import {
    getEnemieByGameName,
    getEnemieByGameId,
    getEnemieById,
    getEnemies,
    getEnemiesByCategory,
    getEnemiesByName,
} from "../controllers/enemieControllers.js";

const router = Router();

router.get("/", getEnemies);

router.get("/:id", getEnemieById);

router.get("/game/id/:game_id", getEnemieByGameId);

router.get("/game/name/:game_name", getEnemieByGameName)

router.get("/category/:category", getEnemiesByCategory);

router.get("/name/:text", getEnemiesByName)

export default router;
