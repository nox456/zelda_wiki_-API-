INSERT INTO races VALUES 
    (
        DEFAULT,
        'Hyliano',
        (SELECT array_agg(id) FROM games),
        'Los Hylianos (ハイリア族, Hairia-zoku), también conocidos como los Hylians, son una raza de seres humanos recurrente en la saga de Zelda. Es la raza elegida por los dioses, fieles a las Diosas de Oro, la cual fue destinada a cargar con la voluntad de las diosas, cuidando de las otras razas que residen en Hyrule. Es por ésta misma razón que son considerados la raza más sublime y poderosa de todo Hyrule. Descendientes de entre los que vivían con la Diosa Hylia, mucho antes del establecimiento de Hyrule como un reino, son una raza mágica con orejas puntiagudas que han heredado la sangre, los poderes y habilidades de sus antepasados. Los Hylianos más famosos son los muchos héroes y princesas que han marcado la historia de su raza a lo largo de generaciones.',
        'races/hyliano.webp'
    ),
    (
        DEFAULT,
        'Kokiri',
        (SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time' 
            OR name = 'The Legend of Zelda: The Wind Waker'
        ),
            'Los Kokiri (コキリ, Kokiri), son una raza que habita aparece en Ocarina of Time y en The Wind Waker. Ellos habitan en el Bosque Kokiri bajo la protección del Gran Árbol Deku. Son la representación física de los elfos, ya que parecen niños con orejas picudas y largas, teniendo proporciones pequeñas y finas. Poseen el espíritu de un infante, con una personalidad traviesa y juguetona. Sus trajes representan el verde de la naturaleza, ya que son la metáfora misma de Natura resguardada en un paisaje natural por el Árbol Padre (Árbol Deku).',
        'races/kokiri.webp'
    ),
    (
        DEFAULT,
        'Gerudo',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time' 
            OR name = 'The Legend of Zelda: Majoras Mask' 
            OR name = 'The legend of zelda: oracle of ages' 
            OR name = 'The Legend of Zelda: Oracle of Seasons' 
            OR name = 'The Legend of Zelda: Four Swords Adventures' 
            OR name = 'The Legend of Zelda: Twilight Princess' 
            OR name = 'The Legend of Zelda: Breath of the Wild'
        ),
        'Las Gerudo son unas de las razas recurrentes de la saga de The Legend of Zelda. Son una tribu de ladrones solitarios que está compuesta en su totalidad por mujeres. Sin embargo, cada cien años nace un hombre que está destinado a ser su rey. Tienen la piel bronceada, los ojos dorados y el cabello pelirrojo. Las guerreras Gerudo esgrimen con frecuencia gujas y cimitarras como armas. Son conocidas por tener relaciones con los hombres Hylian.',
        'races/gerudo.webp'
    ),
    (
        DEFAULT,
        'Goron',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time' 
            OR name = 'The Legend of Zelda: Majoras Mask' 
            OR name = 'The Legend of Zelda: Oracle of Ages' 
            OR name = 'The Legend of Zelda: Oracle of Seasons' 
            OR name = 'The Legend of Zelda: The Wind Waker' 
            OR name = 'The Legend of Zelda: Four Swords Adventures' 
            OR name = 'The Legend of Zelda: The Minish Cap' 
            OR name = 'The Legend of Zelda: Twilight Princess' 
            OR name = 'The Legend of Zelda: Phantom Hourglass' 
            OR name = 'The Legend of Zelda: Spirit Tracks' 
            OR name = 'The Legend of Zelda: Skyward Sword' 
            OR name = 'The Legend of Zelda: Breath of the Wild'
        ),
        'Los Goron son una raza de criaturas humanoides mitad roca presentes en muchos juegos de la saga de Zelda. Se alimentan de rocas y es una raza que habita en zonas montañosas. A pesar de su apariencia tosca, los Goron son una especie relativamente pacífica. Por lo general se considera, quizás superficialmente, que son de baja inteligencia, aunque no hay ninguna indicación particular de esta en los juegos, de hecho, hay pruebas contrarias, como su capacidad para industrializar con tecnología no presente en otras razas como se ve en The Legend of Zelda: Twilight Princess, y algunos papeles Goron como el arqueólogo en The Legend of Zelda: Skyward Sword. Aparte de los Hylians, los Goron son la única raza mostrada tanto en Skyward Sword como en otros juegos de la saga. Ya que Skyward Sword es el primer juego en la Cronología, esto hace a los Goron y los Hylians las razas más antiguas confirmadas.',
        'races/goron.webp'
    ),
    (
        DEFAULT,
        'Zora',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time' 
            OR name = 'The Legend of Zelda: Majoras Mask'
            OR name = 'The Legend of Zelda: Oracle of Ages'
            OR name = 'The Legend of Zelda: The Wind Waker'
            OR name = 'The Legend of Zelda: Twilight Princess'
            OR name = 'The Legend of Zelda: Breath of the Wild'
        ),
        'Los zora (ゾーラ, Zōra), a veces conocidos como Zoras de Mar (Sea Zoras en inglés), son una raza de criaturas hospitalarias que se han vuelto comunes en la saga de Zelda. A pesar de que aparecieron por primera vez en The Legend of Zelda: A Link to the Past, su modelo de personaje fue completamente renovado en The Legend of Zelda: Ocarina of Time y este ha sido el modelo estándar desde entonces. Los zora normalmente se encuentran cerca o en grandes masas de agua. Su color de piel mueve entre las tonalidades de azul, blanco o gris, aunque también se ha visto marrón o rojo, siendo esta última una variante aparentemente rara. La mayoría de los miembros tienen aletas adheridas a sus brazos y una cola en la parte posterior de su cabeza. Las hembras tienen pechos, a pesar de que la especie se reproduce por huevos, aunque esto podría ser simplemente una herramienta de diseño para ayudar a distinguir entre los sexos.',
        'races/zora.webp'
    ),
    (
        DEFAULT,
        'Sheikah',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'
            OR name = 'Zelda II: The Adventure of Link'
            OR name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: Oracle of Ages'
            OR name = 'The Legend of Zelda: Oracle of Seasons'
            OR name = 'The Legend of Zelda: Twilight Princess'
            OR name = 'The Legend of Zelda: Skyward Sword'
            OR name = 'The Legend of Zelda: A Link Between Worlds'
            OR name = 'The Legend of Zelda: Breath of the Wild'
        ),
        'Los Sheikah (シーカー族, Shīkā-zoku), también conocidos como el Pueblo de las Sombras (Shadow Folk en inglés) son una raza recurrente en la saga de The Legend of Zelda. Son un antiguo clan de ninjas, guerreros que han jurado proteger a la Familia Real de Hyrule, incluso después de la muerte. Por ello se les llegó a conocer como "la sombra de los Hylianos". Eran expertos en el arte mágico y combativo. Se supone que muchos murieron durante la Guerra Civil de Hyrule y se consideran casi extintos en los acontecimientos de The Legend of Zelda: Ocarina of Time.',
        'races/sheikah.webp'
    ),
    (
        DEFAULT,
        'Deku',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: Majoras Mask'
            OR name = 'The Legend of Zelda: Oracle of Ages'
            OR name = 'The Legend of Zelda: Oracle of Seasons'
            OR name = 'The Legend of Zelda: Four Swords Adventures'
            OR name = 'The Legend of Zelda: The Minish Cap'
        ),
        'Los Deku son una raza recurrente en la saga de Zelda. Ellos son una raza de humanoides basada en los seres vegetales que a menudo coexisten con otras razas. El término Deku también se utiliza con frecuencia para referirse a ciertas plantas o productos en base a las plantas, como el Gran Árbol Deku, Babas Deku, Nueces Deku, Escudo Deku, etc.',
        'races/deku.webp'
    ),
    (
        DEFAULT,
        'Deidad',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: A Link to the Past'
            OR name = 'The Legend of Zelda: Links Awakening'
            OR name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: Majoras Mask'
            OR name = 'The Legend of Zelda: Oracle of Ages'
            OR name = 'The Legend of Zelda: Oracle of Seasons'
            OR name = 'The Legend of Zelda: The Wind Waker'
            OR name = 'The Legend of Zelda: Four Swords Adventures'
            OR name = 'The Legend of Zelda: Twilight Princess'
            OR name = 'The Legend of Zelda: Phantom Hourglass'
            OR name = 'The Legend of Zelda: Spirit Tracks'
            OR name = 'The Legend of Zelda: Skyward Sword'
            OR name = 'The Legend of Zelda: Breath of the Wild'
        ),
        'Las Deidades (Deity en inglés) son los seres más poderosos e importantes en la saga de Zelda. Las deidades varían ampliamente en su forma y en la medida de su poder. Los términos como deidad, dios o espíritu se han aplicado a muchos seres, y no existe una definición clara de lo que es una deidad y lo que no lo es. Estos términos no definen el nivel de poder de la deidad, son más bien representativas a la hora de describirlos. Ganondorf por ejemplo, que es un poderoso Gerudo pero generalmente no se considera una deidad, aunque alguna vez se le ha llamado dios.',
        'races/deidad.webp'
    ),
    (
        DEFAULT,
        'Demonio',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'
            OR name = 'The Legend of Zelda: A Link to the Past'
            OR name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: Majoras Mask'
            OR name = 'The Legend of Zelda: Oracle of Ages'
            OR name = 'The Legend of Zelda: Oracle of Seasons'
            OR name = 'The Legend of Zelda: Four Swords Adventures'
            OR name = 'The Legend of Zelda: Twilight Princess'
            OR name = 'The Legend of Zelda: Phantom Hourglass'
            OR name = 'The Legend of Zelda: Spirit Tracks'
            OR name = 'The Legend of Zelda: Skyward Sword'
            OR name = 'The Legend of Zelda: A Link Between Worlds'
            OR name = 'The Legend of Zelda: Breath of the Wild'
        ),
        'Los Demonios (Demons en inglés), son una raza recurrente en la saga de Zelda. Son seres que han existido desde el inicio de los tiempos en el universo de Zelda, por lo general aparecen en todos los juegos como seres cuyo corazón esta lleno de maldad y lo que buscan es gobernar, aunque otros no tienen mucha capacidad mental y solo buscan destrucción, sangre y muerte.',
        'races/demonio.webp'
    ),
    (
        DEFAULT,
        'Hada',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda'
            OR name = 'Zelda II: The Adventure of Link'
            OR name = 'The Legend of Zelda: A Link to the Past'
            OR name = 'The Legend of Zelda: Links Awakening'
            OR name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: Majoras Mask'
            OR name = 'The Legend of Zelda: Oracle of Ages'
            OR name = 'The Legend of Zelda: Oracle of Seasons'
            OR name = 'The Legend of Zelda: Four Swords'
            OR name = 'The Legend of Zelda: The Wind Waker'
            OR name = 'The Legend of Zelda: Four Swords Adventures'
            OR name = 'The Legend of Zelda: The Minish Cap'
            OR name = 'The Legend of Zelda: Twilight Princess'
            OR name = 'The Legend of Zelda: Phantom Hourglass'
            OR name = 'The Legend of Zelda: Spirit Tracks'
            OR name = 'The Legend of Zelda: Skyward Sword'
            OR name = 'The Legend of Zelda: A Link Between Worlds'
            OR name = 'The Legend of Zelda: Breath of the Wild'
        ),
        'Las Hadas (妖精, Yōsei) constituyen un elemento habitual en la saga The Legend of Zelda. Son un tipo de criaturas voladoras de tamaño pequeño que poseen poderes mágicos, con los cuales ayudan a Link en infinidad de formas. Se pueden ver en casi todos los juegos siendo amigables con todos menos con Ganondorf y sus secuaces, esto debido a que este personaje mencionado, supone una amenaza a la paz de Hyrule. En toda la saga solo se han visto dos hadas masculinas: Tael y Leaf.',
        'races/hada.webp'
    ),
    (
        DEFAULT,
        'Skull Kid (Raza)',
        (
            SELECT array_agg(id) FROM games WHERE name = 'The Legend of Zelda: Ocarina of Time'
            OR name = 'The Legend of Zelda: Majoras Mask'
            OR name = 'The Legend of Zelda: Twilight Princess'
        ),
        'Los Skull Kid (スタルキッド, Sutarukiddo, Stalkid en japonés) son una raza recurrente en la saga The Legend of Zelda. Son una raza de seres pequeños y traviesos que viven en los bosques. Cuando un adulto se pierde en el bosque Perdido, una maldición les hará convertirse en stalfos, mientras que Navi sugiere que cuando los niños se pierden en el bosque, pueden llegar a ser los Skull Kid. Mientras que los Skull Kid tienden a ser amables con los niños, temen a los adultos y les atacarán nada más verles.',
        'races/skull_kid.webp'
    );
