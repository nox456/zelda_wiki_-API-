import express from "express";
import morgan from "morgan";
import { join, dirname } from "path";
import { fileURLToPath } from "url";

import characterRoutes from "./routes/characterRoutes.js";
import gameRoutes from "./routes/gameRoutes.js";
import raceRoutes from "./routes/raceRoutes.js";
import consoleRoutes from "./routes/consoleRoutes.js";
import enemieRoutes from "./routes/enemieRoutes.js";

// console.clear();
const app = express();
const __dirname = dirname(fileURLToPath(import.meta.url));

// Settings
app.set("host", process.env.HOST);
app.set("port", process.env.PORT);

// Middlewares
app.use(morgan("dev"));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(join(__dirname, "public")));
app.use(express.static(join(__dirname,"database")))

// Routes
app.use((req, res, next) => {
    res.header("Access-Control-Allow-Origin", process.env.ORIGIN_CORS)
    next();
});
app.use("/characters", characterRoutes);
app.use("/games", gameRoutes);
app.use("/races", raceRoutes);
app.use("/consoles", consoleRoutes);
app.use("/enemies", enemieRoutes);

// Server ON
app.listen(app.get("port"), () => {
    console.log(`Server on http://${app.get("host")}:${app.get("port")}`);
});
