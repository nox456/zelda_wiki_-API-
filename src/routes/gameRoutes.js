import { Router } from "express";

import {
    getGameByConsoleId,
    getGameById,
    getGameByName,
    getGames,
    getGameByConsoleName
} from "../controllers/gameControllers.js";

const router = Router();

router.get("/", getGames);

router.get("/:id", getGameById);

router.get("/name/:text", getGameByName);

router.get("/console/id/:console_id", getGameByConsoleId)

router.get("/console/name/:console_name", getGameByConsoleName)

export default router;
