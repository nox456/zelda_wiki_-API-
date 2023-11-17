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
        'Los Octorok (オクタロック, Okutarokku) son enemigos recurrentes en saga The Legend of Zelda. Estos tienen forma de pulpo, y su principal característica es que disparan bolas de barro por su boca. Su diseño varía a lo largo de los diferentes juegos.',
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
        'Los Leever (リーバー, Rībā) son enemigos recurrente en la saga The Legend of Zelda. Son criaturas que viven en la arena, que generalmente se encuentran con mayor frecuencia en áreas desérticas, pero se sabe que viven dentro de las mazmorras, y se especula que también en el agua.',
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
        'Los Moblins (モリブリン, Moriburin) son enemigos recurrentes en la saga The Legend of Zelda. Son una especie de monstruos con forma de cerdo o bulldog, que a menudo se encuentran en los bosques. Lo más frecuente es que lleven lanzas como armas, pero en ocasiones portan espadas, palos y arcos y flechas. Aunque la mayoría de Moblin son simplemente siervos sin mucha explicación, hay varias excepciones de Moblin individuales independientes que aparecen en la historia.',
        'enemies/moblin.webp'
    ),
    (
        DEFAULT,
        'Dodongo',
        'Jefe',
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'),
        'Los Dodongo (japonés: ドドンゴ Dodongo) son unos de los enemigos de mazmorras más recurrentes en ambas búsquedas del juego The Legend of Zelda. Aparecerán de a uno a la vez o en grupos, tanto como jefes, subjefes e incluso como enemigos normales. Su aspecto es el de Triceratops naranjas con filosos cuernos y con una piel cubierta por resistentes escamas.',
        'enemies/dodongo_(jefe).webp'
    ),
    (
        DEFAULT,
        'Gohma',
        'Jefe',
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'),
        'Gohma (ゴーマー, Gōmā) es un enemigo recurrente, tanto como jefe como subjefe, en ambas búsquedas de The Legend of Zelda. Es un gigantesco arácnido con un enorme ojo.',
        'enemies/gohma_(zelda1).webp'
    ),
    (
        DEFAULT,
        'Ganon',
        'Jefe',
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'),
        'Gannon (ガノン Ganon en japonés) es el jefe final de The Legend of Zelda. Él secuestra a la princesa Zelda y la mantiene como rehén en su guarida en la Montaña de la Muerte. Después de obtener los ocho fragmentos de la Trifuerza, Link puede entrar en el nivel 9 para matar a Ganon y rescatar a la princesa Zelda.',
        'enemies/ganon_(zelda1).webp'
    ),
    (
        DEFAULT,
        'Bits',
        'Basico',
        (SELECT array_agg(id) FROM games WHERE name = 'Zelda II - The Adventure of Link'),
        'Los Bits son enemigos de Zelda II: The Adventure of Link. Son masas gelatinosas de color rojo similares a los Bots, pero menos comunes, apareciendo solo en algunas llanuras de Hyrule y en una cueva de la Montaña de la Muerte. A diferencia de los Bots, los Bits no pueden saltar y son ligeramente más débiles a los golpes. Se acercan a Link poco a poco para intentar tocarle y dañarle.',
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
        'Los Stalfos (スタルフォス, Sutarufosu) son enemigos recurrentes en la serie The Legend of Zelda. Son guerreros esqueléticos que en un pasado gozaron de vida, pero que por diversas razones, y tras fallecer, se volvieron hostiles. Pueden atacar con espadas, escudos, mazos, o incluso arrojando sus propios huesos.',
        'enemies/stalfos.webp'
    ),
    (
        DEFAULT,
        'Daira',
        'Basico',
        (SELECT array_agg(id) FROM games WHERE name = 'Zelda II - The Adventure of Link'),
        'Los dairas (japonés: "ダイラ Daira") son enemigos que aparecen en Zelda II: The Adventure of Link. Son una especie de cocodrilos bípedos que llevan un hacha en la mano, con la cual atacan.',
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
        'Link Oscuro o Link Tenebroso (ダークリンク, Dāku Rinku, Dark Link o Shadow Link en inglés) es un enemigo recurrente en la saga de Zelda. Esta sombra doppelgänger de Link es capaz de utilizar muchos de los propios ataques de Link, a menudo imitándolo. Se desconoce si alguna de las apariencias de Link Oscuro representan en todos los juegos la misma entidad, o si cada juego cuenta con su propio y único Link Oscuro. Varios Link Oscuros ocasionalmente aparecen juntos y no está claro si cada uno de ellos posee una conciencia individual, o si son solo los aspectos del mismo ser.',
        'enemies/link_oscuro.webp'
    ),
    (
        DEFAULT,
        'Volvagia',
        'Jefe',
        (SELECT array_agg(id) FROM games WHERE name = 'Zelda II - The Adventure of Link'),
        'La sala en la que se encuentra Volvagia tiene tres fosos de lava. Se eleva fuera de cualquiera de estos antes de un ataque. Cuando se levanta de la lava, se detendrá a la altura del salto natural de Link. Luego escupe un chorro de bolas de fuego hacia Link, y luego se hunde en la lava antes de reaparecer de otro foso.',
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
        'Los gibdos (ギブド, Gibudo) son enemigos recurrentes en la saga The Legend of Zelda. Tienen aspecto de momia y es posible quemar sus vendas para revelar lo que hay debajo, normalmente un stalfos o un ReDead. Sus ataques más comunes son los gritos paralizantes, los agarres (que absorben la vitalidad de la víctima) y los ataques directos (que son muy dañinos).',
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
        'Hinox es un enemigo recurrente en la saga de The Legend of Zelda. Se trata de unos misteriosos cíclopes, con forma similar a la de los ogros. Por lo general aparecen como gigantes humanoides, de color marrón claro, con la característica de tener un solo ojo. Tienen afinidad a las bombas, y por lo general, las utilizan como armas para intentar destruir a Link.',
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
        'Los Poes (ポウ, Pō) es un enemigo recurrente en la Saga Zelda. Son fantasmas, como espíritus de seres fallecidos que tienen odio hacia el mundo y se pueden encontrar en lugares oscuros, como los cementerios, campos vacíos, llanuras y cuevas. Los Poes a menudo transportan una linterna. Una variedad de papeles son interpretados por Poes en sus respectivos juegos. Sin embargo, estos papeles, así como sus apariciones han cambiado en el curso de la historia de Zelda.',
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
        'Los Keese (キース, Kisu) son enemigos recurrentes en la saga de Zelda. Son los murciélagos, por lo general de piel oscura, que atacan a Link volando hacia él. Son criaturas ágiles que han demostrado ser más una molestia que un enemigo temido. Con mayor frecuencia se encuentran en las cuevas y mazmorras, pero a veces se pueden encontrar en mundo abierto.',
        'enemies/keese.webp'
    ),
    (
        DEFAULT,
        'Ganondorf',
        'Jefe',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda - Ocarina of Time'
        ),
        'El Gran Rey del Mal: Ganondorf (大魔王ガノンドロフ, Dai mao Ganondorofu, Great King of Evil: Ganondorf en inglés), es el jefe del Interior del Castillo de Ganon, la última mazmorra de The Legend of Zelda: Ocarina of Time.',
        'enemies/ganondorf.webp'
    );
