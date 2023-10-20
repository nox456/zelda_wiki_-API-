SET datestyle = dmy;
INSERT INTO enemies VALUES 
    (
        DEFAULT,
        'Octorok',
        'Basico',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'
            OR name = 'Zelda II - The Adventure of Link'
            OR name = 'The Legend of Zelda - A Link to the Past'
            OR name = 'The Legend of Zelda - Links Awakening'
            OR name = 'The Legend of Zelda - Ocarina of Time'
            OR name = 'The Legend of Zelda - Majoras Mask'
            OR name = 'The Legend of Zelda - Oracle of Ages'
            OR name = 'The Legend of Zelda - Oracle of Seasons'
            OR name = 'The Legend of Zelda - Four Swords'
            OR name = 'The Legend of Zelda - The Wind Waker'
            OR name = 'The Legend of Zelda - Four Swords Adventures'
            OR name = 'The Legend of Zelda - The Minish Cap'
            OR name = 'The Legend of Zelda - Phantom Hourglass'
            OR name = 'The Legend of Zelda - Spirit Tracks'
            OR name = 'The Legend of Zelda - Skyward Sword'
            OR name = 'The Legend of Zelda - A Link Between Worlds'
            OR name = 'The Legend of Zelda - Breath of the Wild'
        ),
        'enemies/octorok.webp'
    ),
    (
        DEFAULT,
        'Leever',
        'Basico',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'
            OR name = 'Zelda II - The Adventure of Link'
            OR name = 'The Legend of Zelda - A Link to the Past'
            OR name = 'The Legend of Zelda - Links Awakening'
            OR name = 'The Legend of Zelda - Ocarina of Time'
            OR name = 'The Legend of Zelda - Majoras Mask'
            OR name = 'The Legend of Zelda - Oracle of Ages'
            OR name = 'The Legend of Zelda - Oracle of Seasons'
            OR name = 'The Legend of Zelda - Four Swords'
            OR name = 'The Legend of Zelda - Four Swords Adventures'
            OR name = 'The Legend of Zelda - The Minish Cap'
            OR name = 'The Legend of Zelda - Twilight Princess'
            OR name = 'The Legend of Zelda - A Link Between Worlds'
            OR name = 'The Legend of Zelda - Tri Force Heroes'
        ),
        'enemies/leever.webp'
    ),
    (
        DEFAULT,
        'Moblin',
        'Basico',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'
            OR name = 'Zelda II - The Adventure of Link'
            OR name = 'The Legend of Zelda - A Link to the Past'
            OR name = 'The Legend of Zelda - Links Awakening'
            OR name = 'The Legend of Zelda - Ocarina of Time'
            OR name = 'The Legend of Zelda - Oracle of Ages'
            OR name = 'The Legend of Zelda - Oracle of Seasons'
            OR name = 'The Legend of Zelda - Four Swords'
            OR name = 'The Legend of Zelda - The Wind Waker'
            OR name = 'The Legend of Zelda - The Minish Cap'
            OR name = 'The Legend of Zelda - Skyward Sword'
            OR name = 'The Legend of Zelda - A Link Between Worlds'
            OR name = 'The Legend of Zelda - Breath of the Wild'
        ),
        'enemies/moblin.webp'
    ),
    (
        DEFAULT,
        'Dodongo',
        'Jefe',
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'),
        'enemies/dodongo_(jefe).webp'
    ),
    (
        DEFAULT,
        'Gohma',
        'Jefe',
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'),
        'enemies/gohma_(zelda1).webp'
    ),
    (
        DEFAULT,
        'Ganon',
        'Jefe',
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'),
        'enemies/ganon_(zelda1).webp'
    ),
    (
        DEFAULT,
        'Bits',
        'Basico',
        (SELECT array_agg(id) FROM games WHERE name = 'Zelda II - The Adventure of Link'),
        'enemies/bits.webp'
    ),
    (
        DEFAULT,
        'Stalfos',
        'Basico',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'
            OR name = 'Zelda II - The Adventure of Link'
            OR name = 'The Legend of Zelda - A Link to the Past'
            OR name = 'The Legend of Zelda - Links Awakening'
            OR name = 'The Legend of Zelda - Ocarina of Time'
            OR name = 'The Legend of Zelda - Oracle of Ages'
            OR name = 'The Legend of Zelda - Oracle of Seasons'
            OR name = 'The Legend of Zelda - Four Swords'
            OR name = 'The Legend of Zelda - The Wind Waker'
            OR name = 'The Legend of Zelda - Four Swords Adventures'
            OR name = 'The Legend of Zelda - The Minish Cap'
            OR name = 'The Legend of Zelda - Twilight Princess'
            OR name = 'The Legend of Zelda - Phantom Hourglass'
            OR name = 'The Legend of Zelda - Spirit Tracks'
            OR name = 'The Legend of Zelda - Skyward Sword'
            OR name = 'The Legend of Zelda - A Link Between Worlds'
        ),
        'enemies/stalfos.webp'
    ),
    (
        DEFAULT,
        'Daira',
        'Basico',
        (SELECT array_agg(id) FROM games WHERE name = 'Zelda II - The Adventure of Link'),
        'enemies/daira.webp'
    ),
    (
        DEFAULT,
        'Link Oscuro',
        'Jefe',
        (
            SELECT array_agg(id) FROM games WHERE name = 'Zelda II - The Adventure of Link'
            OR name = 'The Legend of Zelda - A Link to the Past'
            OR name = 'The Legend of Zelda - Ocarina of Time'
            OR name = 'The Legend of Zelda - Oracle of Ages'
            OR name = 'The Legend of Zelda - Four Swords Adventures'
            OR name = 'The Legend of Zelda - Spirit Tracks'
            OR name = 'The Legend of Zelda - A Link Between Worlds'
            OR name = 'The Legend of Zelda - Tri Force Heroes'
        ),
        'enemies/link_oscuro.webp'
    ),
    (
        DEFAULT,
        'Volvagia',
        'Jefe',
        (SELECT array_agg(id) FROM games WHERE name = 'Zelda II - The Adventure of Link'),
        'enemies/volvagia_(zelda2).webp'
    ),
    (
        DEFAULT,
        'Gibdo',
        'Basico',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'
            OR name = 'The Legend of Zelda - A Link to the Past'
            OR name = 'The Legend of Zelda - Links Awakening'
            OR name = 'The Legend of Zelda - Ocarina of Time'
            OR name = 'The Legend of Zelda - Majoras Mask'
            OR name = 'The Legend of Zelda - Oracle of Ages'
            OR name = 'The Legend of Zelda - Oracle of Seasons'
            OR name = 'The Legend of Zelda - Four Swords'
            OR name = 'The Legend of Zelda - Four Swords Adventures'
            OR name = 'The Legend of Zelda - The Minish Cap'
            OR name = 'The Legend of Zelda - Twilight Princess'
            OR name = 'The Legend of Zelda - A Link Between Worlds'
            OR name = 'The Legend of Zelda - Tri Force Heroes'
            OR name = 'The Legend of Zelda - Tears of the Kingdom'
        ),
        'enemies/gibdo.webp'
    ),
    (
        DEFAULT,
        'Hinox',
        'Basico',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda - A Link to the Past'
            OR name = 'The Legend of Zelda - Links Awakening'
            OR name = 'The Legend of Zelda - Four Swords Adventures'
            OR name = 'The Legend of Zelda - Phantom Hourglass'
            OR name = 'The Legend of Zelda - A Link Between Worlds'
            OR name = 'The Legend of Zelda - Tri Force Heroes'
            OR name = 'The Legend of Zelda - Breath of the Wild'
        ),
        'enemies/hinox.webp'
    ),
    (
        DEFAULT,
        'Poe',
        'Basico',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda - A Link to the Past'
            OR name = 'The Legend of Zelda - Ocarina of Time'
            OR name = 'The Legend of Zelda - Majoras Mask'
            OR name = 'The Legend of Zelda - Oracle of Ages'
            OR name = 'The Legend of Zelda - Oracle of Seasons'
            OR name = 'The Legend of Zelda - The Wind Waker'
            OR name = 'The Legend of Zelda - Twilight Princess'
            OR name = 'The Legend of Zelda - Phantom Hourglass'
            OR name = 'The Legend of Zelda - A Link Between Worlds'
        ),
        'enemies/poe.webp'
    ),
    (
        DEFAULT,
        'Keese',
        'Basico',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'
            OR name = 'The Legend of Zelda - A Link to the Past'
            OR name = 'The Legend of Zelda - Links Awakening'
            OR name = 'The Legend of Zelda - Ocarina of Time'
            OR name = 'The Legend of Zelda - Majoras Mask'
            OR name = 'The Legend of Zelda - Oracle of Ages'
            OR name = 'The Legend of Zelda - Oracle of Seasons'
            OR name = 'The Legend of Zelda - Four Swords'
            OR name = 'The Legend of Zelda - The Wind Waker'
            OR name = 'The Legend of Zelda - Four Swords Adventures'
            OR name = 'The Legend of Zelda - The Minish Cap'
            OR name = 'The Legend of Zelda - Twilight Princess'
            OR name = 'The Legend of Zelda - Phantom Hourglass'
            OR name = 'The Legend of Zelda - Spirit Tracks'
            OR name = 'The Legend of Zelda - Skyward Sword'
            OR name = 'The Legend of Zelda - A Link Between Worlds'
            OR name = 'The Legend of Zelda - Tri Force Heroes'
            OR name = 'The Legend of Zelda - Breath of the Wild'
        ),
        'enemies/keese.webp'
    ),
    (
        DEFAULT,
        'Ganondorf',
        'Jefe',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda - Ocarina of Time'
        ),
        'enemies/ganondorf.webp'
    );
