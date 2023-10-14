import { Router } from "express";
import {
    getConsoleByGame,
    getConsoleById,
    getConsoleByName,
    getConsoles,
} from "../controllers/consoleControllers.js";

const router = Router();

router.get("/", getConsoles);

router.get("/:id", getConsoleById);

router.get("/game/:game_id", getConsoleByGame);

router.get("/name/:text", getConsoleByName);

export default router;
