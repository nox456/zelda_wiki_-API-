INSERT INTO characters VALUES 
    (
        DEFAULT,
        'Link',
        (SELECT id FROM races WHERE name = 'Hyliano'),
        (SELECT array_agg(id) FROM games),
        'Link (リンク, Rinku) es el nombre del protagonista de The Legend of Zelda. Es el Héroe Elegido por las Diosas, portador de la Espada Maestra y representante de la Trifuerza del Valor. Una vez iniciada su aventura, Link se convierte en un héroe legendario después de salvar a Hyrule de las fuerzas malignas ocasionadas por Ganon (también conocido como Ganondorf). En gran parte de su viaje, consigue distintas armas y objetos con los que logra enfrentarse a sus enemigos, además de también ayudarle a completar las diversas mazmorras que visita. Además de la guía de las Diosas, Link también suele encontrarse con distintos aliados, quienes luego le acompañan hasta el final del viaje; la más reconocida siendo Navi en The Legend of Zelda: Ocarina of Time. En otras ocasiones, Link también recibe ayuda de la Princesa Zelda, quien posteriormente se vuelve también su aliada con el mismo objetivo de defender Hyrule.',
        'characters/link.webp'
    ),
    (
        DEFAULT,
        'Zelda',
        (SELECT id FROM races WHERE name = 'Hyliano'),
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'
            OR name = 'Zelda II: The Adventure of Link'
            OR name = 'The Legend of Zelda: A Link to the Past'
            OR name = 'The Legend of Zelda: Oracle of Ages'
            OR name = 'The Legend of Zelda: Oracle of Seasons'
            OR name = 'The Legend of Zelda: Four Swords'
            OR name = 'The Legend of Zelda: The Wind Waker'
            OR name = 'The Legend of Zelda: Four Swords Adventures'
            OR name = 'The Legend of Zelda: The Minish Cap'
            OR name = 'The Legend of Zelda: Twilight Princess'
            OR name = 'The Legend of Zelda: Spirit Tracks'
            OR name = 'The Legend of Zelda: Skyward Sword'
            OR name = 'The Legend of Zelda: A Link Between Worlds'
            OR name = 'The Legend of Zelda: Breath of the Wild'
            OR name = 'The Legend of Zelda: Tears of the Kingdom'
        ),
        'La Princesa Zelda (ゼルダ姫, Zeruda-hime) es un personaje principal de la saga de videojuegos de The Legend of Zelda. Es la princesa descendiente de la Familia Real de Hyrule. Zelda porta la Trifuerza de la Sabiduría, imbuida con la esencia de la Diosa Nayru que le permite discernir las decisiones más sabias, especialmente en situaciones relativas al bienestar de Hyrule. Junto al héroe elegido por las Diosas, Link, Zelda trabaja con él para detener las fuerzas malignas que perjudican a su reino. A menudo, su adversario principal son las distintas encarnaciones de Ganondorf, el portador de la Trifuerza del Poder.',
        'characters/zelda.webp'
    ),
    (
        DEFAULT,
        'Ganon',
        (SELECT id FROM races WHERE name = 'Demonio'),
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'
            OR name = 'Zelda II: The Adventure of Link'
            OR name = 'The Legend of Zelda: A Link to the Past'
            OR name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: Oracle of Ages'
            OR name = 'The Legend of Zelda: Oracle of Seasons'
            OR name = 'The Legend of Zelda: Four Swords Adventures'
            OR name = 'The Legend of Zelda: Twilight Princess'
            OR name = 'The Legend of Zelda: A Link Between Worlds'
            OR name = 'The Legend of Zelda: Breath of the Wild'
        ),
        'Ganon (ガノン, Ganon), es la forma alternativa de Ganondorf. Conocido como el Rey del Mal, es el principal antagonista de la saga de Zelda. Aunque Ganon siempre se parece a un jabalí, su forma exacta y su forma de combate varía entre sus apariencias. Es el poseedor de la Trifuerza del Poder, posee asombrosos poderes mágicos y físicos, incluyendo lo que parece ser casi la inmortalidad. Ganon tiende a ser presentado como la personificación del mal, en oposición a Link, quien personifica a la benevolencia.',
        'characters/ganon.webp'
    ),
    (
        DEFAULT,
        'Impa',
        (SELECT id FROM races WHERE name = 'Sheikah'),
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'
            OR name = 'Zelda II: The Adventure of Link'
            OR name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: Oracle of Ages'
            OR name = 'The Legend of Zelda: Oracle of Seasons'
            OR name = 'The Legend of Zelda: Skyward Sword'
            OR name = 'The Legend of Zelda: A Link Between Worlds'
            OR name = 'The Legend of Zelda: Breath of the Wild'
            OR name = 'The Legend of Zelda: Tears of the Kingdom'
        ),
        'Impa (インパ, Inpa) es uno de los personajes más recurrentes en la saga de The Legend of Zelda. Ella por lo general es la niñera o guardaespaldas de la Princesa Zelda, guardando por ello una relación muy estrecha con la Familia Real. Además, con frecuencia ayuda a Link guiándolo en algún punto de su aventura. Impa en la saga de The Legend of Zelda es la única confirmada como verdadera Sheikah, además de Prunia, Pay y Rotver; ya que Sheik es el álter ego de la Princesa Zelda y los otros personajes teorizados como Sheikah no son confirmados por Nintendo.',
        'characters/impa.webp'
    ),
    (
        DEFAULT,
        'Agahnim',
        (SELECT id FROM races WHERE name = 'Demonio'),
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: A Link to the Past'),
        'Agahnim (司祭アグニム, Shisai Agunimu) es el principal antagonista de la mayor parte de The Legend of Zelda: A Link to the Past. Agahnim es un mago misterioso (sacerdote en la versión japonesa) quien ganó la confianza del Rey de Hyrule, lo traicionó y se hizo cargo del trono de Hyrule. Ganon describe a Agahnim como su alter ego, y después de la derrota final del mago, Ganon sale del cuerpo de Agahnim. Varias estatuas semejantes a él se pueden ver en la Pirámide, en el Mundo Oscuro.',
        'characters/agahnim.webp'
    ),
    (
        DEFAULT,
        'Marín',
        (SELECT id FROM races WHERE name = 'Hyliano'),
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Links Awakening'),
        'Marín (マリン, Marin) es un personaje de The Legend of Zelda: Links Awakening. Ella es una chica joven que vive en con su padre Tarín en Aldea Mabe, situada en la Isla Koholint. Ella es quien encuentra a Link en las Costas Toronbo después de que naufragara. El manual la describe teniendo un extraño parecido a la Princesa Zelda. Por ello, Link confunde a Marín con Zelda cuando se despierta en su casa.',
        'characters/marin.webp'
    ),
    (
        DEFAULT,
        'Navi',
        (SELECT id FROM races WHERE name = 'Hada'),
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time'),
        'Navi (ナビィ, Nabyi), es un personaje recurrente de The Legend of Zelda: Ocarina of Time. Fue asignada por el Gran Árbol Deku para ser el hada compañera de Link en su importante misión heroica.',
        'characters/navi.webp'
    ),
    (
        DEFAULT,
        'Sheik',
        (SELECT id FROM races WHERE name = 'Sheikah'),
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time'),
        'Sheik (シーク, Shīku) es un personaje originario de The Legend of Zelda: Ocarina of Time. Es el álter ego de la Princesa Zelda, estando ésta disfrazada de uno de los miembros del clan de los Sheikah, una misteriosa raza de guerreros cuidadores de la Familia Real de Hyrule. Sheik suele aparecer en momentos cruciales del juego y es responsable de muchas acciones imprescindibles para que Link continúe su aventura.',
        'characters/sheik.webp'
    ),
    (
        DEFAULT,
        'Din',
        (SELECT id FROM races WHERE name = 'Deidad'),
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: A Link to the Past'
            OR name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: The Wind Waker'
            OR name = 'The Legend of Zelda: Twilight Princess'
            OR name = 'The Legend of Zelda: Skyward Sword'
        ),
        'Din, la Diosa del Poder (Goddess of Power en la versión inglesa), es una de las tres omnipotentes Diosas de Oro. Din, junto a sus hermanas Nayru y Farore, bajaron de los cielos y crearon Hyrule donde antes solo había una tierra sumida en el caos, aportando cada una su parte en el proceso. Din, la Diosa del Poder, formó la geografía de Hyrule. Al terminar su labor, las tres diosas abandonaran la tierra creada, dejando como legado la legendaria Trifuerza, la esencia de su poder, en el Reino Sagrado.',
        'characters/din.webp'
    ),
    (
        DEFAULT,
        'Nayru',
        (SELECT id FROM races WHERE name = 'Deidad'),
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: A Link to the Past'
            OR name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: The Wind Waker'
            OR name = 'The Legend of Zelda: Twilight Princess'
            OR name = 'The Legend of Zelda: Skyward Sword'
        ),
        'Nayru, la Diosa de la Sabiduría (Goddess of Wisdom en inglés), es una de las tres omnipotentes Diosas de Oro. Nayru, junto con sus hermanas Din y Farore, bajaron de los cielos y crearon Hyrule donde antes solo había una tierra sumida en el caos, aportando cada una su parte en el proceso. Nayru, la Diosa de la Sabiduría, creó las leyes del universo y la magia. Al terminar su labor, las tres diosas abandonaran la tierra creada, dejando como legado la legendaria Trifuerza, la esencia de su poder, en el Reino Sagrado.',
        'characters/nayru.webp'
    ),
    (
        DEFAULT,
        'Farore',
        (SELECT id FROM races WHERE name = 'Deidad'),
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: A Link to the Past'
            OR name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: The Wind Waker'
            OR name = 'The Legend of Zelda: Twilight Princess'
            OR name = 'The Legend of Zelda: Skyward Sword'
        ),
        'Farore, la Diosa del Valor (Goddess of Courage en la versión inglesa), es una de las tres omnipotentes Diosas de Oro. Farore, junto con sus hermanas Din y Nayru, bajaron de los cielos y crearon Hyrule donde antes solo había una tierra sumida en el caos, aportando cada una su parte en el proceso. Farore, la Diosa del Valor, creó las formas de vida que habitan la tierra. Al terminar su labor, las tres diosas abandonaron la tierra creada, dejando como legado la legendaria Trifuerza, la esencia de su poder, en el Reino Sagrado.',
        'characters/farore.webp'
    ),
    (
        DEFAULT,
        'Ganondorf',
        (SELECT id FROM races WHERE name = 'Gerudo'),
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: The Wind Waker'
            OR name = 'The Legend of Zelda: Twilight Princess'
            OR name = 'The Legend of Zelda: Tears of the Kingdom'
        ),
        'Ganondorf (ガノンドロフ, Ganondorofu) también conocido como el Rey Demonio o Señor de la Oscuridad, es el antagonista principal de la mayoría de los juegos de la saga The Legend of Zelda. Es un miembro de las Gerudo, como el miembro masculino que solo nace cada cien años, Ganondorf logra convertirse en el rey de las Gerudo o Guardián del Desierto, dependiendo del juego. Dotado de una poderosa magia, Ganondorf a menudo busca la omnipotente Trifuerza para concederle su deseo de conquistar Hyrule. Él es el responsable de la mayoría de los golpes de estado a los diferentes gobiernos de la Familia Real de Hyrule para tomar el trono.',
        'characters/ganondorf.webp'
    ),
    (
        DEFAULT,
        'Darunia',
        (SELECT id FROM races WHERE name = 'Goron'),
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time'),
        'Darunia (ダルニア, Darunia) es un personaje de The Legend of Zelda: Ocarina of Time. Es el patriarca de la tribu Goron que vive en Ciudad Goron en la Montaña de la Muerte. Es definido como un gobernante fuerte. Si bien a menudo puede parecer algo grosero, siempre se preocupa profundamente por su pueblo. Aunque no acepta en un principio la ayuda de Link, más tarde lo acepta como su "hermano de sangre" y como recompensa por su ayuda le entrega el Rubí Goron.',
        'characters/darunia.webp'
    ),
    (
        DEFAULT,
        'Ruto',
        (SELECT id FROM races WHERE name = 'Zora'),
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time'),
        'La Princesa Ruto (ルト姫, Ruto-Hime), princesa de los Zora, es un personaje de The Legend of Zelda: Ocarina of Time. Ella es la única hija del Rey Zora, el gobernante de la población Zora que reside en Hyrule, siendo Ruto la heredera del trono. Cuando era una niña, Ruto demuestra ser muy tenaz y obstinada, incluso ante el peligro, un rasgo que le ayudaría en sus años como adulta. A pesar de que inicialmente se muestra egoísta en su juventud, al crecer llega a ser mucho más benévola, sobre todo después de que ella despierte con el conocimiento de que es la Sabia del Agua que guarda el Templo del Agua por debajo del Lago Hylia.',
        'characters/ruto.webp'
    ),
    (
        DEFAULT,
        'Saria',
        (SELECT id FROM races WHERE name = 'Kokiri'),
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time'),
        'Saria (サリア, Saria) es un personaje de The Legend of Zelda: Ocarina of Time. Es una niña Kokiri, y por consideración de su compañero Kokiri, Mido, muy bonita. Es considerada como una figura maternal en el Bosque Kokiri y a menudo recurren a ella en busca de un consejo. Debido a su buen corazón, es muy querida por la gente del Bosque Kokiri, especialmente por Mido, quien desarrolló un profundo afecto por ella. Es también la mejor amiga de Link, un extraño entre los Kokiri, dando lugar a un poderoso vínculo que parece provocar celos en Mido.',
        'characters/saria.webp'
    ),
    (
        DEFAULT,
        'Gran Hada del Poder',
        (SELECT id FROM races WHERE name = 'Hada'),
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: Majoras Mask'
        ),
        'La Gran Hada del Poder (Great Fairy of Power en inglés) es un personaje recurrente de la Saga The Legend of Zelda. Es una Gran Hada que vive en diferentes Fuentes de la Gran Hada dispersas en los juegos en los que aparece.',
        'characters/gran_hada_del_poder.webp'
    ),
    (
        DEFAULT,
        'Skull Kid (Majoras Mask)',
        (SELECT id FROM races WHERE name = 'Skull Kid (Raza)'),
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: Majoras Mask'
            OR name = 'The Legend of Zelda: Twilight Princess'
        ),
        'Skull Kid (スタルキッド Sutarukiddo) es un personaje de The Legend of Zelda: Ocarina of Time y The Legend of Zelda: Majoras Mask. Se trata de un miembro de la raza Skull Kid, de una personalidad traviesa, jugando y gastando bromas a los demás. Aparece como el principal antagonista de Majoras Mask, y en general se acepta, aunque no explícitamente, que hace su primera aparición en Ocarina of Time.',
        'characters/skull_kid.webp'
    );
