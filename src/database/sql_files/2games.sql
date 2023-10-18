INSERT INTO games VALUES 
    (
        DEFAULT,
        'The Legend of Zelda',
        (SELECT id FROM consoles WHERE name = 'Nintendo Entertainment System (NES)'),
        '22/08/1987',
        'The Legend of Zelda (ゼルダの伝説, Zeruda no Densetsu), también conocido como THE HYRULE FANTASY, es la primera entrega de la saga de Zelda, diseñado por Shigeru Miyamoto y desarrollado y publicado por Nintendo. Situado en la tierra de Hyrule, la trama se centra en un chico llamado Link, el protagonista jugable que tiene como objetivo rescatar a la princesa Zelda de las garras de la antagonista principal, Ganon, mediante la recopilación de los ocho fragmentos de la Trifuerza, un poderoso artefacto.',
        'games/zelda1.webp'
    ),
    (
        DEFAULT,
        'Zelda II - The Adventure of Link',
        (SELECT id FROM consoles WHERE name = 'Nintendo Entertainment System (NES)'),
        '01/12/1988', 
        'Zelda II: The Adventure of Link (リンクの冒険, Rinku no Bōken), es la segunda entrega de la saga The Legend of Zelda, publicado por Nintendo para Nintendo Entertainment System. Fue lanzado originalmente en Japón en el Famicom Disk System menos de un año después del lanzamiento de The Legend of Zelda. Nintendo lanzó Zelda II en Japón un total de siete meses antes de que Estados Unidos se estrenara el primer título de Zelda. Nintendo lanzó Zelda II en Norteamérica en 1988, casi dos años completos después de su lanzamiento inicial en Japón, convirtiendo (con varias modificaciones) el juego de su formato inicial de Famicom Disk System en el formato cartucho de NES.',
        'games/zelda2.webp'
    ),
    (
        DEFAULT, 
        'The Legend of Zelda - A Link to the Past', 
        (SELECT id FROM consoles WHERE name = 'Super Nintendo Entertainment System (SNES)'),
        '13/04/1992',
        'The Legend of Zelda: A Link to the Past (ゼルダの伝説 神々のトライフォース, Zeruda no Densetsu Kamigami no Toraifōsu) es la tercera entrega de la saga de The Legend of Zelda, y la primera de la consola Super Nintendo Entertainment System, de Nintendo. Fue lanzado para el SNES el 21 de noviembre de 1991 en Japón, el 13 de abril de 1992 en Estados Unidos y el 24 de septiembre del mismo año en Europa, y para el Game Boy Advance el 2 diciembre de 2002 en Estados Unidos, el 14 de marzo de 2003 en Japón y el 28 de marzo de ese mismo año en Europa.',
        'games/a_link_to_the_past.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Links Awakening',
        (SELECT id FROM consoles WHERE name = 'Game Boy'),
        '01/08/1993',
        'The Legend of Zelda: Links Awakening (ゼルダの伝説リンクの目覚め, Zeruda no Densetsu Rinku no Mezame ?) es la cuarta entrega de la saga The Legend of Zelda desarrollada por Nintendo para la portátil Game Boy. Fue lanzada en Japón el 6 de junio de 1993, en América del Norte el 1 de agosto y en Europa el 1 de diciembre del mismo año. Es el primer título de la saga para una consola portátil, y a pesar de inicialmente ser un título considerado menor, ha hecho numerosas contribuciones e innovaciones a la misma, incluyendo la capacidad de Link para saltar. Es una secuela directa de The Legend of Zelda: A Link to the Past, con el mismo Link y estableciéndose poco después de los acontecimientos de aquel videojuego.',
        'games/links_awakening.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Ocarina of Time',
        (SELECT id FROM consoles WHERE name = 'Nintendo 64'),
        '23/11/1998',
        'The Legend of Zelda: Ocarina of Time (ぜるだ の でんせつ とき の おかりな, Zeruda no Densetsu Toki no Okarina) es la quinta entrega de saga The Legend of Zelda, desarrollado por Nintendo Entertainment Analysis and Development,  coodesarrollado por Grezzo, y publicado por Nintendo para la Nintendo 64. El primer juego con gráficos 3D de la serie, el motor básico y modo de juego se utilizaron posteriormente en futuras entregas, incluyendo su secuela, The Legend of Zelda: Majoras Mask. El juego comenzó una tradición en la saga de Zelda, un elemento importante o persona del juego aparece en el título del juego.',
        'games/ocarina.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Majoras Mask',
        (SELECT id FROM consoles WHERE name = 'Nintendo 64'),
        '26/10/2000',
        'The Legend of Zelda: Majoras Mask (ゼルダの伝説 ムジュラの仮面, Zeruda no Densetsu: Mujura no Kamen ?) es la sexta entrega de la saga de Zelda, segundo y definitivo juego publicado para Nintendo 64. Fue lanzado en Japón el 27 de abril de 2000, en Canadá y en los Estados Unidos el 24 de octubre de 2000 y en Europa el 17 de noviembre de 2000. El juego es uno de los más exitosos de Zelda, vendiendo aproximadamente 314.000 copias durante su primera semana de ventas en Japón y más de tres millones de copias vendidas en total.',
        'games/majoras.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Oracle of Ages',
        (SELECT id FROM consoles WHERE name = 'Game Boy Color'),
        '14/05/2001',
        'The Legend of Zelda: Oracle of Ages (ゼルダの伝説：年齢のオラクル, Zeruda no Densetsu: Nenrei no Orakuru), es el séptimo juego de la saga de Zelda, publicado por Nintendo y desarrollado por Capcom, durante el desarrollo con la supervisión de Nintendo. Aunque el juego fue lanzado originalmente para su uso en la Nintendo Game Boy Color, presenta características especiales.',
        'games/oracle_ages.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Oracle of Seasons',
        (SELECT id FROM consoles WHERE name = 'Game Boy Color'),
        '14/05/2001',
        'The Legend of Zelda: Oracle of Seasons (ゼルダの伝説: 四季のオラクル, Zeruda no Densetsu: Shiki no Orakuru), es un videojuego publicado por Nintendo y desarrollado por Flagship, con la supervisión de Nintendo en el desarrollo. Aunque el juego fue lanzado originalmente para su uso en la Nintendo Game Boy Color, presenta características especiales.',
        'games/oracle_seasons.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Four Swords',
        (SELECT id FROM consoles WHERE name = 'Game Boy Advance'),
        '02/12/2002',
        'The Legend of Zelda: Four Swords (ゼルダの伝説4つの剣, Zeruda no Densetsu Yottsu no Ken) es la novena entrega de la saga de Zelda, desarrollado por Flagship y publicado por Nintendo. Originalmente un juego multijugador hasta de cuatro jugadores, que finalmente fue re-editado como The Legend of Zelda: Four Swords Anniversary Edition, que añade la opción de un modo de un solo jugador. La versión original del juego fue incluida en la re-edición para Game Boy Advance de The Legend of Zelda: A Link to the Past, la edición de aniversario fue lanzada como DSiWare gratuita, accesible tanto a la Nintendo DSi y 3DS, para celebrar el vigésimo quinto aniversario de The Legend of Zelda.',
        'games/four_swords.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - The Wind Waker',
        (SELECT id FROM consoles WHERE name = 'Nintendo GameCube'),
        '24/03/2003',
        'The Legend of Zelda: The Wind Waker (ゼルダの伝説 風のタクト, Zeruda no Densetsu Kaze no Takuto) es la décima entrega de la saga de Zelda, título notable por su uso de la animación cel-shaded y la navegación por el mar. Fue lanzado para la Nintendo GameCube en Japón el 13 de diciembre de 2002, en Canadá y en los Estados Unidos el 24 de marzo de 2003, en Europa el 3 de mayo de 2003 y en Australia el 7 de mayo de 2003. La historia transcurre cientos de años después de The Legend of Zelda: Ocarina of Time. Posteriormente se lanzaría la secuela del juego, The Legend of Zelda: Phantom Hourglass para Nintendo DS, siendo una secuela directa de The Wind Waker.',
        'games/wind_waker.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Four Swords Adventures',
        (SELECT id FROM consoles WHERE name = 'Nintendo GameCube'),
        '07/06/2004',
        'The Legend of Zelda: Four Swords Adventures (ゼルダの伝説四つの剣の冒険, Zeruda no Densetsu: Yottsu no Ken no Bōken), es la undécima entrega de la saga de Zelda. Lanzado para la Nintendo GameCube en Japón el 18 de marzo 2004, en América del Norte el 7 de junio de 2004, y en Europa el 7 de enero de 2005. Para jugar se debe utilizar la Game Boy Advance junto con el cable para conectarla a la GameCube.',
        'games/four_swords_adventures.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - The Minish Cap',
        (SELECT id FROM consoles WHERE name = 'Game Boy Advance'),
        '10/01/2005',
        'The Legend of Zelda: The Minish Cap (ゼルダの伝説 ふしぎのぼうし, Zeruda no Densetsu Fushigi no Bōshi), es el duodécimo videojuego de la saga de The Legend of Zelda, desarrollado por Capcom bajo la supervisión de Nintendo en el proceso de desarrollo. The Minish Cap es el primer título original de la saga de The Legend of Zelda en aparecer en Game Boy Advance tras la reedición de The Legend of Zelda: A Link to the Past, junto con el primer Zelda multijugador, The Legend of Zelda: Four Swords. El juego llegó a la consola en noviembre de 2004 en Japón y en Europa, y a principios de 2005 en Estados Unidos y en Australia. En 2011 fueron lanzados los juegos de GBA para los embajadores de Nintendo 3DS, uno de estos juegos fue The Legend of Zelda: The Minish Cap.',
        'games/minish_cap.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Twilight Princess',
        (SELECT id FROM consoles WHERE name = 'Nintendo GameCube'),
        '11/12/2006',
        'The Legend of Zelda: Twilight Princess (ゼルダの伝説トワイライトプリンセス, Zeruda no Densetsu Towairaito Purinsesu) es la decimotercera entrega de la saga The Legend of Zelda, desarrollado por Nintendo EAD y publicado por Nintendo para Wii y Nintendo GameCube.',
        'games/twilight_princess.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Phantom Hourglass',
        (SELECT id FROM consoles WHERE name = 'Nintendo DS'),
        '01/10/2007',
        'The Legend of Zelda: Phantom Hourglass (ゼルダの伝説夢幻の砂時計, Zeruda no Densetsu Mugen no Sunadokei), es la decimocuarta entrega en la saga de Zelda, lanzado para la consola Nintendo DS en Japón el 23 de junio de 2007 , en Norteamérica el 1 de octubre de 2007, en Australia el 11 de octubre de 2007, y en Europa el 19 de octubre de 2007.',
        'games/phantom_hourglass.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Spirit Tracks',
        (SELECT id FROM consoles WHERE name = 'Nintendo DS'),
        '07/12/2009',
        'The Legend of Zelda: Spirit Tracks (ゼルダの伝説　大地の汽笛, Zeruda no Densetsu: Supiritto Torakku) es la decimoquinta entrega de la saga de Zelda, lanzado para la Nintendo DS el 7 de diciembre de 2009 en estados Unidos, el 10 de diciembre en Australia, el 11 de diciembre en Europa y finalmente el 23 de diciembre en Japón. Los detalles sobre el juego fueron revelados por Satoru Iwata en la Game Developers Conference 2009. Spirit Tracks fue puesto en exhibición en la Electronic Entertainment Expo. La historia transcurre cien años después de lo vivido en The Legend of Zelda: Phantom Hourglass, siendo su secuela directa.',
        'games/spirit_tracks.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Skyward Sword',
        (SELECT id FROM consoles WHERE name = 'Wii'),
        '20/11/2011',
        'The Legend of Zelda: Skyward Sword (ゼルダの伝説 スカイウォードソード, Zeruda no Densetsu: Sukaiu~Ōdosōdo) es la entrega dieciséis de la saga de Zelda, desarrollado por Nintendo para Wii. Fue lanzado el 18 de noviembre para Europa, 20 de noviembre en América del Norte, y 23 de noviembre en Japón de 2011. La realización del juego fue confirmada en 2006, y la información básica se proporcionó en la Electronic Entertainment Expo de 2010.',
        'games/skyward_sword.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - A Link Between Worlds',
        (SELECT id FROM consoles WHERE name = 'Nintendo 3DS'),
        '22/11/2013',
        'The Legend of Zelda: A Link Between Worlds (ゼルダの伝説：世界の間のリンク, Zeruda no Densetsu: Sekai no Ma no Rinku), es la entrega de la saga de The Legend of Zelda número diecisiete, para la consola  Nintendo 3DS. The Legend of Zelda: A Link Between Worlds es un nuevo juego con una nueva historia ambientada en el mundo del clásico de The Legend of Zelda: A Link to the Past, compartiendo además del mundo, jugabilidad y música. El juego fue lanzado el 22 de noviembre de 2013 en América del Norte y Europa, el 24 de noviembre en Australia, y el 26 de diciembre en Japón.',
        'games/a_link_between_worlds.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Tri Force Heroes',
        (SELECT id FROM consoles WHERE name = 'Nintendo 3DS'),
        '23/11/2015',
        'The Legend of Zelda: Tri Force Heroes (ゼルダの伝説トライフォースヒーローズ, Zeruda no Densetsu: Torai Fōsu Hīrōzu) es una entrega multijugador de la saga The Legend of Zelda para la consola Nintendo 3DS, siendo la número dieciocho. Nintendo anunció por primera vez su aparición el 16 de junio de 2015, durante la conferencia del E3. Finalmente, el 5 de julio de 2015, Nintendo informó a través de las redes sociales que su fecha de lanzamiento oficial en Europa sería el 23 de octubre del mismo año.',
        'games/triforce_heroes.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Breath of the Wild',
        (SELECT id FROM consoles WHERE name = 'Nintendo Switch'),
        '03/03/2017',
        'The Legend of Zelda: Breath of the Wild ((ゼルダの伝説 ブレス オブ ザ ワイルド, Zeruda no Densetsu: Buresu obu za Wairudo en japonés)) es el décimo noveno título de la saga homónima, lanzado para las consolas Wii U y Nintendo Switch. Fue publicado el 3 de marzo de 2017, a la par del lanzamiento de la consola Nintendo Switch. Se han replanteado diferentes convenciones de la saga volviendo así a los orígenes de la misma, permitiendo, por ejemplo, que el jugador sea capaz de elegir a dónde ir y cómo llegar hasta allí en cualquier momento del juego, pero solamente después de adquirir la paravela, ya que sin ella, no se podrá salir de la Meseta de los albores.',
        'games/breath_of_the_wild.webp'
    ),
    (
        DEFAULT,
        'The Legend of Zelda - Tears of the Kingdom',
        (SELECT id FROM consoles WHERE name = 'Nintendo Switch'),
        '12/05/2023',
        'The Legend of Zelda: Tears of the Kingdom (ゼルダの伝説 ティアーズ オブ ザ キングダム, Zeruda no Densetsu Tiāzu obu za Kingudamu) es un videojuego de la saga The Legend of Zelda, desarrollado por Nintendo para su consola Nintendo Switch. Es una secuela del videojuego de 2017 The Legend of Zelda: Breath of the Wild.',
        'games/tears_of_the_kingdom.webp'
    );


UPDATE consoles SET games_id = (SELECT array_agg(id) FROM games WHERE games.console_id = consoles.id);
