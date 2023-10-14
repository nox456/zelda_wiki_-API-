import { Router } from "express";
import {
    getEnemieByGame,
    getEnemieById,
    getEnemies,
    getEnemiesByCategory,
    getEnemiesByName,
} from "../controllers/enemieControllers.js";

const router = Router();

router.get("/", getEnemies);

router.get("/:id", getEnemieById);

router.get("/game/:game_id", getEnemieByGame);

router.get("/category/:category", getEnemiesByCategory);

router.get("/name/:text", getEnemiesByName)

export default router;
