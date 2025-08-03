BEGIN;


DELETE FROM authors;
DELETE FROM books;
DELETE FROM books_authors;
DELETE FROM keywords;
DELETE FROM publishers;
DELETE FROM editions;
DELETE FROM roles;
DELETE FROM permissions;
DELETE FROM roles_permissions;

INSERT INTO authors (full_name) VALUES
('(anonyme)'),
('Barthélémy, Charles'),
('Baunard, Mgr.'),
('Blanc de Saint Bonnet, A.'),
('Bonald, Louis de'),
('Canet, V.'),
('Carnot, Dr Jean'),
('Carrel, Dr. Alexis'),
('Carré (OP), Père'),
('Chanoine D***'),
('Charles (S.J.), Pierre'),
('Chautard (ocr), Dom J.B.'),
('Chauvin S.S.S., Jos.'),
('Concile de Trente'),
('Copin-Albancelli, Paul'),
('Cousin, Louis'),
('Cristiani, Mgr. L.'),
('De Corte, Marcel'),
('Debout, Mgr. H.'),
('Elisabeth de la Trinité, Soeur'),
('Emmanuel, Père'),
('Escada, Alain'),
('Faber, R.P. Frederic William'),
('François de Sales, Saint'),
('Gache, Paul'),
('Garrigou-Lagrange, R.P. Réginald'),
('Gaxotte, Pierre'),
('Gay, Mme. Francisque'),
('Golven'),
('Guéranger, Dom Prosper'),
('Guérard des Lauriers (O.P.), R.P. M.L.'),
('Haupt, Jean'),
('Lebbe, R.P.'),
('Lemann, abbé Joseph'),
('Lenotre, Georges'),
('Lhomond'),
('Libermann, Vénérable Père F.-M. P.'),
('Maitre, abbé Joseph'),
('Marmion, Dom Columba'),
('Martigues, Claire'),
('Mercier, Louis'),
('Pie IX, Grégoire XVI, Pie VII'),
('Pie, Cardinal'),
('Poullin, Marcel'),
('Pègue (O.P.), R.P. Thomas'),
('Rodriguez, R.P. Alphonse'),
('Sanborn, Mgr Donald J.'),
('Ségur, Comtesse de'),
('Thérèse de l''Enfant Jésus, Sainte'),
('Tour-du-Pin la Charce, René de la'),
('Trochu, Mgr. Francis'),
('Villéon, Ombline P. de la'),
('Visitation d''Annecy');




INSERT INTO books (title, first_edition) VALUES
('Au service de l''amour', 1939),
('Comment j''élève mon enfant', 1927),
('Compagnons d''éternité', NULL),
('Elisabeth', 1954),
('Entretiens de Saint François de Sales', NULL),
('Erreurs et mensonges historiques', 1863),
('Evangile d''une grand''mère', 1866),
('Explications de la thèse de Cassiciacum', 2011),
('Fleurs récentes du divin parterre', NULL),
('Histoire d''une âme', 1898),
('Histoire de Jeanne d''Arc', 1890),
('Histoire de la religion avant la venue du Christ', 2023),
('Histoires chinoises du Père Lebbe', NULL),
('Incarnation de l''homme', NULL),
(
    'Instructions pastorales sur les malheurs actuels de la France 
  (Carême 1871)',
    NULL
),
('Institutions liturgiques', 1840),
('Introduction à la vie dévote', 1609),
('Jésus-Christ roi de l''histoire', 1857),
('La Bienheureuse Marguerite de Lorraine', 1943),
('La Dame des nations dans l''Europe catholique', 1909),
('La Présence Réelle du Verbe incarné dans les Espèces Consacrées', 1987),
('La Voie Royale', NULL),
('La bienheureuse Jeanne d''Arc. Nouvelle vie populaire illustrée.', 1907),
('La dévolution de la couronne de France', 1984),
('La doctrine des lettres spirituelles', 1964),
('La franc-maçonnerie et la question religieuse', 1892),
('La prière de toutes les heures', 1941),
('La révolution Française', 1928),
(
    'La somme théologique de St. Thomas en forme de catéchisme pour tous les 
  fidèles',
    NULL
),
('Le Christ Vie de l''âme', 1917),
('Le Christ, idéal du moine', 1922),
('Le Curé d''Ars, saint Jean-Marie Vianney (1786 - 1859)', 1925),
('Le Pacte de Reims', 1962),
('Le Saint Sacrifice de la Messe', NULL),
('Le vieillard', NULL),
('Lettres apostoliques de Pie IX, Grégoire XVI, Pie VII', NULL),
('Les 3 conversions et les 3 voies', 1933),
(
    'Les papes et la papauté de 1143 à la fin du monde d''après la prophétie 
  attribuée à saint Malachie',
    1898
),
('Les pierres sacrées / Poèmes de la tranchée', 1922),
('L''Ame de tout apostolat', 1907),
('L''homme contre lui-même', 1962),
('L''homme, cet inconnu', NULL),
('L''intelligence en péril de mort', 1968),
('Objectifs 1927-1928', 1927),
('Paris révolutionnaire', 1920),
('Passion méditée au pied du St Sacrement', NULL),
('Philosophie des moeurs contemporaines', NULL),
('Pratique de la perfection chrétienne', NULL),
('Réflexion sur la révolution de 1830', NULL),
('Réflexion sur le Novus Ordo Missae', 2019),
('Restauration française', 1850),
('Saint François de Sales', NULL),
('Sainte Jeanne d''Arc à Vaucouleurs', NULL),
('Simont de Montfort et la croisade contre les Albigeois', 1910),
('Souvenirs', NULL),
('Théorie du genre. Stop !', 2014),
('Tout pour Jésus', 1854),
('Un prêtre redouté de Napoléon, le P. Bruno Lantéri', 1955),
('Vers un ordre social chrétien', 1929),
('Vieilles maisons, vieux papiers', 1905);


WITH
authors_cte AS (
    SELECT
        id AS author_id,
        full_name
    FROM authors
),

books_cte AS (
    SELECT
        id AS book_id,
        title
    FROM books
),

associations AS (
    SELECT
        v.book_title::text,
        v.author_name::text
    FROM (
        VALUES
        ('Elisabeth', '(anonyme)'),
        ('Objectifs 1927-1928', '(anonyme)'),
        ('Erreurs et mensonges historiques', 'Barthélémy, Charles'),
        ('Le vieillard', 'Baunard, Mgr.'),
        ('Restauration française', 'Blanc de Saint Bonnet, A.'),
        ('Réflexion sur la révolution de 1830', 'Bonald, Louis de'),
        ('Simont de Montfort et la croisade contre les Albigeois', 'Canet, V.'),
        ('Au service de l''amour', 'Carnot, Dr Jean'),
        ('Compagnons d''éternité', 'Carré (OP), Père'),
        ('L''homme, cet inconnu', 'Carrel, Dr. Alexis'),
        ('La prière de toutes les heures', 'Charles (S.J.), Pierre'),
        ('Fleurs récentes du divin parterre', 'Chanoine D***'),
        ('L''Ame de tout apostolat', 'Chautard (ocr), Dom J.B.'),
        ('Passion méditée au pied du St Sacrement', 'Chauvin S.S.S., Jos.'),
        ('Le Saint Sacrifice de la Messe', 'Concile de Trente'),
        ('La franc-maçonnerie et la question religieuse', 'Copin-Albancelli, Paul'),
        ('Un prêtre redouté de Napoléon, le P. Bruno Lantéri', 'Cristiani, Mgr. L.'),
        ('Incarnation de l''homme', 'De Corte, Marcel'),
        ('Philosophie des moeurs contemporaines', 'De Corte, Marcel'),
        ('L''homme contre lui-même', 'De Corte, Marcel'),
        ('L''intelligence en péril de mort', 'De Corte, Marcel'),
        ('La bienheureuse Jeanne d''Arc. Nouvelle vie populaire illustrée.', 'Debout, Mgr. H.'),
        ('Souvenirs', 'Elisabeth de la Trinité, Soeur'),
        ('Le chrétien du jour et le chrétien de l''Evangile', 'Emmanuel, Père'),
        ('Théorie du genre. Stop !', 'Escada, Alain'),
        ('Tout pour Jésus', 'Faber, R.P. Frederic William'),
        ('Introduction à la vie dévote', 'François de Sales, Saint'),
        ('Sainte Jeanne d''Arc à Vaucouleurs', 'Gache, Paul'),
        ('Les 3 conversions et les 3 voies', 'Garrigou-Lagrange, R.P. Réginald'),
        ('La révolution Française', 'Gaxotte, Pierre'),
        ('Comment j''élève mon enfant', 'Gay, Mme. Francisque'),
        ('La dévolution de la couronne de France', 'Golven'),
        ('Jésus-Christ roi de l''histoire', 'Guéranger, Dom Prosper'),
        ('Institutions liturgiques', 'Guéranger, Dom Prosper'),
        ('La Voie Royale', 'Guérard des Lauriers (O.P.), R.P. M.L.'),
        ('La Présence Réelle du Verbe incarné dans les Espèces Consacrées', 'Guérard des Lauriers (O.P.), R.P. M.L.'),
        ('Réflexion sur le Novus Ordo Missae', 'Guérard des Lauriers (O.P.), R.P. M.L.'),
        ('Le procès de la démocratie', 'Haupt, Jean'),
        ('Histoires chinoises du Père Lebbe', 'Lebbe, R.P.'),
        ('La Dame des nations dans l''Europe catholique', 'Lemann, abbé Joseph'),
        ('Paris révolutionnaire', 'Lenotre, Georges'),
        ('Vieilles maisons, vieux papiers', 'Lenotre, Georges'),
        ('Histoire de la religion avant la venue du Christ', 'Lhomond'),
        ('La doctrine des lettres spirituelles', 'Libermann, Vénérable Père F.-M. P.'),
        ('Les papes et la papauté de 1143 à la fin du monde d''après la prophétie attribuée à saint Malachie', 'Maitre, abbé Joseph'),
        ('Le Christ Vie de l''âme', 'Marmion, Dom Columba'),
        ('Le Christ, idéal du moine', 'Marmion, Dom Columba'),
        ('Le Pacte de Reims', 'Martigues, Claire'),
        ('Les pierres sacrées / Poèmes de la tranchée', 'Mercier, Louis'),
        ('La somme théologique de St. Thomas en forme de catéchisme pour tous les fidèles', 'Pègue (O.P.), R.P. Thomas'),
        ('Lettres apostoliques de Pie IX, Grégoire XVI, Pie VII', 'Pie IX, Grégoire XVI, Pie VII'),
        ('Instructions pastorales sur les malheurs actuels de la France (Carême 1871)', 'Pie, Cardinal'),
        ('Histoire de Jeanne d''Arc', 'Poullin, Marcel'),
        ('Pratique de la perfection chrétienne', 'Rodriguez, R.P. Alphonse'),
        ('Explications de la thèse de Cassiciacum', 'Sanborn, Mgr Donald J.'),
        ('Evangile d''une grand''mère', 'Ségur, Comtesse de'),
        ('Histoire d''une âme', 'Thérèse de l''Enfant Jésus, Sainte'),
        ('Vers un ordre social chrétien', 'Tour-du-Pin la Charce, René de la'),
        ('Saint François de Sales', 'Trochu, Mgr. Francis'),
        ('Le Curé d''Ars, saint Jean-Marie Vianney (1786 - 1859)', 'Trochu, Mgr. Francis'),
        ('La Bienheureuse Marguerite de Lorraine', 'Villéon, Ombline P. de la')
    ) AS v (book_title, author_name)
)

SELECT
    b.book_id,
    a.author_id
FROM
    associations AS assoc
INNER JOIN books_cte AS b ON assoc.book_title = b.title
INNER JOIN authors_cte AS a ON assoc.author_name = a.full_name;


INSERT INTO keywords (label) VALUES
('6° sens'),
('Albigeois'),
('Alaitement maternel'),
('Ampère'),
('Anticréationisme'),
('Anticléricalisme'),
('Apostolat'),
('Arche de Noé'),
('Art'),
('Athéisme'),
('Aug﻿ustin Cauchy'),
('Baïus'),
('Bouthillier de Rancé'),
('Bruno Lantéri'),
('Brunswick'),
('Bx Clet'),
('Bx Jaccard'),
('Confession de la Foi'),
('Conditionnement'),
('Constructivisme'),
('Contre‑révolution'),
('Cours par correspondance'),
('Croisades'),
('David Reimer'),
('Dalgairns'),
('Décadence'),
('Décadence de l''homme contemporain'),
('Dévolution, succession de la couronne'),
('Démocratie'),
('Discernement'),
('Donoso Cortès'),
('Dr Wirchaw'),
('Economie'),
('Education'),
('Education chrétienne'),
('Education de la vie et des sentiments'),
('Ecole chrétienne'),
('Ecole fataliste'),
('Ecole humanitaire'),
('Ecole naturaliste'),
('Elisabeth Louisgrand'),
('Empire romain'),
('Entreprises'),
('Ernest Renand'),
('Esthétique'),
('Evolutionisme'),
('Expériences'),
('Expérimentations'),
('Facebook'),
('Faber'),
('FEMEN'),
('Felix, R.P.'),
('Féminisme'),
('Féminisme radical'),
('Filles de la Charité d''Arras  Révolution de'),
('Filles de l''Ordre de NotreDame'),
('Foi'),
('Franc‑maçonneries'),
('Franc‑maçonnerie'),
('France'),
('Garcia Moreno'),
('Galilée'),
('Guillaume IV de Prusse'),
('Hagiographie'),
('Homme'),
('Homosexuels'),
('Informations'),
('Inspir﻿ation'),
('Intelligence'),
('Intelligence'), /* duplicate intentionally removed */
('Interprétation'),
('Intuition'),
('JMJ (N.S.J.C.)'),
('Jansénius'),
('Jean‑Baptiste Biot'),
('Jean‑Baptiste Dumas'),
('John Money'),
('Joseph de Cupertino, Saint'),
('Judith Butler'),
('Le Verrier'),
('Littré  Conversion'),
('Liturgie'),
('Mariage'),
('Marcellin Bertheloot'),
('Martyrs'),
('Martyrs de l''Ouganda'),
('Media'),
('Média'),
('Méthodologie des sciences'),
('Mixité scolaire'),
('Monarchie'),
('Montalembert'),
('Modernisme'),
('Moyen‑Âge (IXXVI°)'),
('Mort'),
('Mortara, affaire'),
('Morale'),
('Morale'), /* duplicate removed */
('Mutationisme'),
('Naturalisme'),
('New Age'),
('Newman'),
('ONU'),
('Objectif'), /* unclear original, might need adjust */
('Patrie'),
('Passion'),
('Péd﻿iatrie'),
('Perversion morale'),
('Philippe le Bel et Boniface VIII'),
('Phénomènes'),
('Philosophie'),
('Philosophe naturaliste'),
('Providence'),
('Progrès'),
('Progressisme'),
('Proanthropos (Descendance singe homme)'),
('Principe de Le Chatelier'),
('Qualités primaires'),
('Qualités primaires, qualités secondaires'),
('Qualités secondaires'),
('Quesnel'),
('Raël Mouvement raëlien'),
('Réalités trancendantes'),
('Restauration'),
('Ricci'),
('Sacre de Napoléon par Pie VII'),
('Sacrements'),
('Saint Alliance'),
('Saint François de Sales'),
('Sainte Jeanne d''Arc'),
('Sainte Jeanne d''arc'), /* review duplicates for case */
('Sant﻿é artificielle et santé naturelle'),
('Science'),
('Science, culte de la'),
('Sciences'),
('Sciences humaines'),
('Scolarité'),
('Socialocommunisme'),
('Spécialisation'),
('Spiritualité'),
('Spiritualité'), /* duplicates removed but listed once */
('Soeur Elisabeth de la Trinité'),
('Ste Louise de Marillac, veuve Le Gras'),
('Sully Prudhomme'),
('Syllabus'),
('Temple de Salomon'),
('Taine'),
('Temps'),
('Temps physiologiques'),
('Tempérament'),
('Théorie du gender'),
('Théorie du genre'),
('Totalitarisme'),
('Traité de Westphalie'),
('Unité des activités mentales'),
('Ultramontain'),
('Version des septantes'),
('Vie intérieure'),
('Vieillesse'),
('Volta'),
('Vaucouleurs'),
('XXe siècle'),
('XIX°');


INSERT INTO publishers (publisher_name)
VALUES
('ASAMC'),
('ASJ'),
('ASV'),
('Barbou & Cie'),
('Bayard'),
('Beauchesne, Gabriel'),
('Blériot, Ch.'),
('Bloud et Gay'),
('Bonne Presse'),
('Calmann-Levy'),
('Carmel de Dijon'),
('Casterman Vve. H.'),
('Centro Librario'),
('Cerf'),
('Chiré'),
('Civitas'),
('Club Culture Française'),
('D.M.M.'),
('DDB'),
('Desbonnet'),
('Duc-Albatros'),
('Editions de Paris'),
('ESJA'),
('Etudes anti-modernistes'),
('Fayard'),
('Fédération Nationale Catholique'),
('Hachette'),
('Lethielleux'),
('Loireau'),
('Maison-Mère des Petites Soeurs des Pauvres'),
('Maredsous'),
('Michel, Saint'),
('Médicis'),
('Oeuvre Eucharistique'),
('Office Central de Ste. Thérèse'),
('Perisse Frères'),
('Perrin'),
('Plon'),
('Privat'),
('Pro Manuscripto'),
('Procure des Oblats de la V. Marie'),
('Saint Charles, Oeuvre de'),
('Saint Esprit, Procure des Pères du'),
('Secrétariat Jeunesse Catholique Belge'),
('Sté. St. Augustin'),
('Taffin-Lefort'),
('Téqui'),
('Universitaires, Editions'),
('Visitation d’Annecy'),
('Vitte, Librairie Catholique Emmanuel');


WITH raw_data (
    title, publisher_name, page_count, volume_count, publication_year
) AS (
    SELECT
        v.title::text,
        v.publisher_name::text,
        v.page_count::integer,
        v.volume_count::integer,
        v.publication_year::integer
    FROM (
        VALUES
        ('Elisabeth', 'Maison-Mère des Petites Soeurs des Pauvres', 150, 1, NULL),
        ('Objectifs 1927-1928', 'Fédération Nationale Catholique', 150, 3, 1927),
        ('Fleurs récentes du divin parterre', 'Saint Charles, Oeuvre de', 141, 1, NULL),
        ('Le Saint Sacrifice de la Messe', 'ESJA', 19, 1, 1982),
        ('Entretiens de Saint François de Sales', 'Visitation d’Annecy', 527, 1, 1933),
        ('Erreurs et mensonges historiques', 'Blériot, Ch.', 3750, 16, 1863),
        ('Le vieillard', 'de Gigord, J.', 512, 1, 1919),
        ('Restauration française', 'Casterman Vve. H.', 476, 1, 1872),
        ('Réflexion sur la révolution de 1830', 'Duc-Albatros', 168, 1, 1988),
        ('Simont de Montfort et la croisade contre les Albigeois', 'Sté. St. Augustin', 294, 1, 1910),
        ('La prière de toutes les heures', 'DDB', 447, 1, 1955),
        ('Passion méditée au pied du St Sacrement', 'Oeuvre Eucharistique', 426, 1, 1905),
        ('La franc-maçonnerie et la question religieuse', 'Perrin', 123, 1, 1892),
        ('Un prêtre redouté de Napoléon, le P. Bruno Lantéri', 'Procure des Oblats de la V. Marie', 161, 1, 1957),
        ('Philosophie des moeurs contemporaines', 'Universitaires, Editions', 292, 1, 1943),
        ('Souvenirs', 'Carmel de Dijon', 299, 1, 1921),
        ('Théorie du genre. Stop !', 'Civitas', 75, 1, 2014),
        ('Tout pour Jésus', 'Téqui', 401, 1, 1854),
        ('Introduction à la vie dévote', 'Perisse Frères', 450, 1, 1803),
        ('Les 3 conversions et les 3 voies', 'ESJA', 191, 1, 1984),
        ('La révolution Française', 'Fayard', 452, 1, 1928),
        ('La dévolution de la couronne de France', 'ESJA', 103, 1, 1984),
        ('Institutions liturgiques', 'Chiré', 290, 2, 1976),
        ('La Voie Royale', 'Pro Manuscripto', 69, 1, NULL),
        ('La Présence Réelle du Verbe incarné dans les Espèces Consacrées', 'ESJA', 156, 1, 1987),
        ('Réflexion sur le Novus Ordo Missae', 'Centro Librario', 394, 1, 2019),
        ('Le procès de la démocratie', 'Chiré', 140, 1, 1977),
        ('Histoires chinoises du Père Lebbe', 'Secrétariat Jeunesse Catholique Belge', 108, 1, 1927),
        ('Paris révolutionnaire', 'Perrin', 388, 1, 1906),
        ('Vieilles maisons, vieux papiers', 'Perrin', 1858, 6, 1906),
        ('Histoire de la religion avant la venue du Christ', 'Taffin-Lefort', 312, 1, 1857),
        ('La doctrine des lettres spirituelles', 'Saint Esprit, Procure des Pères du', 525, 1, 1965),
        ('Le Christ, idéal du moine', 'DDB', 620, 1, 1922),
        ('Le Pacte de Reims', 'Michel, Saint', 120, 1, 1962),
        ('Les pierres sacrées / Poèmes de la tranchée', 'Calmann-Levy', 320, 1, 1928),
        ('La somme théologique de St. Thomas  en forme de catéchisme pour tous les fidèles', 'Téqui', 563, 1, 1920),
        ('Lettres apostoliques de Pie IX, Grégoire XVI, Pie VII', 'ASAMC', 240, 1, 1991),
        ('Pratique de la perfection chrétienne', 'Pélagaud, J.B.', 1549, 3, 1863),
        ('Explications de la thèse de Cassiciacum', 'Etudes anti-modernistes', 50, 1, NULL),
        ('Vers un ordre social chrétien', 'Beauchesne, Gabriel', 510, 1, 1929),
        ('Saint François de Sales', 'Vitte, Librairie Catholique Emmanuel', 1458, 2, 1941),
        ('La Bienheureuse Marguerite de Lorraine', 'Bayard', 167, 1, 1943)
    ) AS v (title, publisher_name, page_count, volume_count, publication_year)
),

book_ids AS (
    SELECT
        b.id AS book_id,
        r.title
    FROM raw_data AS r
    INNER JOIN books AS b ON r.title = b.title
),

publisher_ids AS (
    SELECT
        p.id AS publisher_id,
        r.publisher_name
    FROM raw_data AS r
    INNER JOIN publishers AS p ON r.publisher_name = p.publisher_name
)

INSERT INTO editions (
    page_count, volume_count, publication_year, book_id, publisher_id
)
SELECT
    r.page_count,
    r.volume_count,
    r.publication_year,
    b.book_id,
    p.publisher_id
FROM raw_data AS r
INNER JOIN book_ids AS b ON r.title = b.title
INNER JOIN publisher_ids AS p ON r.publisher_name = p.publisher_name;

INSERT INTO
roles (label)
VALUES
('admin'),
('user');


INSERT INTO
permissions (feature)
VALUES
('create_book'),
('get_book'),
('update_book'),
('delete_book');


INSERT INTO roles_permissions (role_id, permission_id)
SELECT
    r.id,
    p.id
FROM
    roles r,
    permissions p
WHERE
    r.label = 'admin'
    AND p.feature = 'create_book';


COMMIT;
