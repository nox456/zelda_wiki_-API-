import { Router } from "express";

import {
    getGameByConsoleId,
    getGameById,
    getGameByName,
    getGames,
} from "../controllers/gameControllers.js";

const router = Router();

router.get("/", getGames);

router.get("/:id", getGameById);

router.get("/name/:text", getGameByName);

router.get("/console/:console_id", getGameByConsoleId)

export default router;
