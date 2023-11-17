CREATE TABLE characters (
    id UUID NOT NULL PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    race_id UUID NOT NULL,
    games_id UUID[] NOT NULL,
    description TEXT NOT NULL,
    img TEXT NOT NULL DEFAULT 'No Photo'
);
CREATE TABLE games (
    id UUID NOT NULL PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    console_id UUID,
    release_date DATE NOT NULL,
    description TEXT NOT NULL,
    img TEXT NOT NULL DEFAULT 'No Photo'
);
CREATE TABLE races (
    id UUID NOT NULL PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    games_id UUID[] NOT NULL,
    description TEXT NOT NULL,
    img TEXT NOT NULL DEFAULT 'No Photo'
);
CREATE TABLE enemies (
    id UUID NOT NULL PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    games_id UUID[] NOT NULL,
    description TEXT NOT NULL,
    img TEXT NOT NULL DEFAULT 'No Photo'
);
CREATE TABLE consoles (
    id UUID NOT NULL PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    release_date DATE NOT NULL,
    games_id UUID[],
    description TEXT NOT NULL,
    img TEXT NOT NULL DEFAULT 'No Photo'
);
