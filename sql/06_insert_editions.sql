DELETE FROM editions;


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        150,
        1,
        NULL,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Elisabeth'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Maison-Mère des Petites Soeurs des Pauvres'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        150,
        3,
        1927,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Objectifs 1927-1928'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Fédération Nationale Catholique'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        141,
        1,
        NULL,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Fleurs récentes du divin parterre'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Saint Charles, Oeuvre de'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        19,
        1,
        1982,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Le Saint Sacrifice de la Messe'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'ESJA'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        527,
        1,
        1933,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Entretiens de Saint François de Sales'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Visitation d’Annecy'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        3750,
        16,
        1863,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Erreurs et mensonges historiques'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Blériot, Ch.'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        512,
        1,
        1919,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Le vieillard'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'de Gigord, J.'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        476,
        1,
        1872,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Restauration française'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Casterman Vve. H.'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        168,
        1,
        1988,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Réflexion sur la révolution de 1830'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Duc-Albatros'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        294,
        1,
        1910,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Simont de Montfort et la croisade contre les Albigeois'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Sté. St. Augustin'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        252,
        1,
        1939,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Au service de l''amour'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Taffin-Lefort'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        55,
        1,
        1941,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Compagnons d''éternité'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Cerf'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        384,
        1,
        1935,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'L''homme, cet inconnu'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Plon'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        447,
        1,
        1955,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'La prière de toutes les heures'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'DDB'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        292,
        1,
        1912,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'L''Ame de tout apostolat'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'ASV'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        426,
        1,
        1905,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Passion méditée au pied du St Sacrement'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Oeuvre Eucharistique'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        123,
        1,
        1892,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'La franc-maçonnerie et la question religieuse'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Perrin'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        161,
        1,
        1957,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Un prêtre redouté de Napoléon, le P. Bruno Lantéri'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Procure des Oblats de la V. Marie'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        280,
        1,
        1943,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Incarnation de l''homme'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Médicis'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        292,
        1,
        1943,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Philosophie des moeurs contemporaines'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Universitaires, Editions'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        301,
        1,
        1968,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'L''intelligence en péril de mort'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Club Culture Française'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        308,
        2,
        2005,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'L''homme contre lui-même'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Editions de Paris'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        356,
        1,
        1907,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'La bienheureuse Jeanne d''Arc. Nouvelle vie populaire illustrée.'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Bonne Presse'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        299,
        1,
        1921,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Souvenirs'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Carmel de Dijon'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        65,
        1,
        1973,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Le chrétien du jour et le chrétien de l''Evangile'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'D.M.M.'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        75,
        1,
        2014,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Théorie du genre. Stop !'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Civitas'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        401,
        1,
        1854,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Tout pour Jésus'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Téqui'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        450,
        1,
        1803,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Introduction à la vie dévote'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Perisse Frères'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        76,
        1,
        1982,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Sainte Jeanne d''Arc à Vaucouleurs'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'ESJA'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        191,
        1,
        1984,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Les 3 conversions et les 3 voies'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'ESJA'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        452,
        1,
        1928,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'La révolution Française'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Fayard'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        693,
        1,
        1927,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Comment j''élève mon enfant'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Bloud et Gay'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        103,
        1,
        1984,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'La dévolution de la couronne de France'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'ESJA'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        178,
        1,
        2008,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Jésus-Christ roi de l''histoire'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'ASJ'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        290,
        2,
        1976,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Institutions liturgiques'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Chiré'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        69,
        1,
        NULL,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'La Voie Royale'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Pro Manuscripto'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        156,
        1,
        1987,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'La Présence Réelle du Verbe incarné dans les Espèces Consacrées'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'ESJA'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        394,
        1,
        2019,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Réflexion sur le Novus Ordo Missae'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Centro Librario'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        140,
        1,
        1977,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Le procès de la démocratie'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Chiré'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        108,
        1,
        1927,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Histoires chinoises du Père Lebbe'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Secrétariat Jeunesse Catholique Belge'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        900,
        3,
        1974,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'La Dame des nations dans l''Europe catholique'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Desbonnet'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        388,
        1,
        1906,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Paris révolutionnaire'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Perrin'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        1858,
        6,
        1906,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Vieilles maisons, vieux papiers'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Perrin'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        312,
        1,
        1857,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Histoire de la religion avant la venue du Christ'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Taffin-Lefort'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        525,
        1,
        1965,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'La doctrine des lettres spirituelles'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Saint Esprit, Procure des Pères du'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        763,
        1,
        1902,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Les papes et la papauté de 1143 à la fin du monde d''après la prophétie attribuée à saint Malachie'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Lethielleux'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        525,
        1,
        1943,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Le Christ Vie de l''âme'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Maredsous'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        620,
        1,
        1922,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Le Christ, idéal du moine'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'DDB'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        120,
        1,
        1962,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Le Pacte de Reims'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Michel, Saint'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        320,
        1,
        1928,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Les pierres sacrées / Poèmes de la tranchée'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Calmann-Levy'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        563,
        1,
        1920,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'La somme théologique de St. Thomas  en forme de catéchisme pour tous les fidèles'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Téqui'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        240,
        1,
        1991,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Lettres apostoliques de Pie IX, Grégoire XVI, Pie VII'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'ASAMC'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        24,
        1,
        1981,
        (
            SELECT
                id
            FROM
                books
            WHERE
                1981,
                title = 'Instructions pastorales sur les malheurs actuels de la France (Carême 1871)'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'ESJA'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        50,
        1,
        NULL,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Histoire de Jeanne d''Arc'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Barbou & Cie'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        1549,
        3,
        1863,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Pratique de la perfection chrétienne'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Pélagaud, J.B.'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        50,
        1,
        NULL,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Explications de la thèse de Cassiciacum'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Etudes anti-modernistes'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        365,
        1,
        1867,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Evangile d''une grand''mère'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Hachette'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        594,
        1,
        1985,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Histoire d''une âme'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Office Central de Ste Thérèse'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        510,
        1,
        1929,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Vers un ordre social chrétien'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Beauchesne, Gabriel'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        1458,
        2,
        1941,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'Saint François de Sales'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Vitte, Librairie Catholique Emmanuel'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        684,
        1,
        1932,
        (
            SELECT
                id
            FROM
                books
            WHERE
                1932,
                title = 'Le Curé d''Ars, saint Jean-Marie Vianney (1786 - 1859)'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Vitte, Librairie Catholique Emmanuel'
        )
    );


INSERT INTO
    editions (
        page_count,
        volume_count,
        publication_year,
        book_id,
        publisher_id
    )
VALUES
    (
        167,
        1,
        1943,
        (
            SELECT
                id
            FROM
                books
            WHERE
                title = 'La Bienheureuse Marguerite de Lorraine'
        ),
        (
            SELECT
                id
            FROM
                publishers
            WHERE
                publisher_name = 'Bayard'
        )
    );
