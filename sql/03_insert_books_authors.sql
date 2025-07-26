DELETE FROM books_authors;


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = '(anonyme)'
WHERE
    b.title = 'Elisabeth';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = '(anonyme)'
WHERE
    b.title = 'Objectifs 1927-1928';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Chanoine D***'
WHERE
    b.title = 'Fleurs récentes du divin parterre';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Concile de Trente'
WHERE
    b.title = 'Le Saint Sacrifice de la Messe';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Visitation d''Annecy'
WHERE
    b.title = 'Entretiens de Saint François de Sales';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Barthélémy, Charles'
WHERE
    b.title = 'Erreurs et mensonges historiques';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Baunard, Mgr.'
WHERE
    b.title = 'Le vieillard';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Blanc de Saint Bonnet, A.'
WHERE
    b.title = 'Restauration française';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Bonald, Louis de'
WHERE
    b.title = 'Réflexion sur la révolution de 1830';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Canet, V.'
WHERE
    b.title = 'Simont de Montfort et la croisade contre les Albigeois';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Carnot, Dr Jean'
WHERE
    b.title = 'Au service de l''amour';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Carré (OP), Père'
WHERE
    b.title = 'Compagnons d''éternité';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Carrel, Dr. Alexis'
WHERE
    b.title = 'L''homme, cet inconnu';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Charles (S.J.), Pierre'
WHERE
    b.title = 'La prière de toutes les heures';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Chautard (ocr), Dom J.B.'
WHERE
    b.title = 'L''Ame de tout apostolat';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Chauvin S.S.S., Jos.'
WHERE
    b.title = 'Passion méditée au pied du St Sacrement';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Copin-Albancelli, Paul'
WHERE
    b.title = 'La franc-maçonnerie et la question religieuse';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Cristiani, Mgr. L.'
WHERE
    b.title = 'Un prêtre redouté de Napoléon, le P. Bruno Lantéri';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'De Corte, Marcel'
WHERE
    b.title = 'Incarnation de l''homme';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'De Corte, Marcel'
WHERE
    b.title = 'Philosophie des moeurs contemporaines';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'De Corte, Marcel'
WHERE
    b.title = 'L''intelligence en péril de mort';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'De Corte, Marcel'
WHERE
    b.title = 'L''homme contre lui-même';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Debout, Mgr. H.'
WHERE
    b.title = 'La bienheureuse Jeanne d''Arc. Nouvelle vie populaire illustrée.';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Elisabeth de la Trinité, Soeur'
WHERE
    b.title = 'Souvenirs';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Emmanuel, Père'
WHERE
    b.title = 'Le chrétien du jour et le chrétien de l''Evangile';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Escada, Alain'
WHERE
    b.title = 'Théorie du genre. Stop !';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Faber, R.P. Frederic William'
WHERE
    b.title = 'Tout pour Jésus';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'François de Sales, Saint'
WHERE
    b.title = 'Introduction à la vie dévote';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Gache, Paul'
WHERE
    b.title = 'Sainte Jeanne d''Arc à Vaucouleurs';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Garrigou-Lagrange, R.P. Réginald'
WHERE
    b.title = 'Les 3 conversions et les 3 voies';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Gaxotte, Pierre'
WHERE
    b.title = 'La révolution Française';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Gay, Mme. Francisque'
WHERE
    b.title = 'Comment j''élève mon enfant';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Golven'
WHERE
    b.title = 'La dévolution de la couronne de France';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Guéranger, Dom Prosper'
WHERE
    b.title = 'Jésus-Christ roi de l''histoire';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Guéranger, Dom Prosper'
WHERE
    b.title = 'Institutions liturgiques';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Guérard des Lauriers (O.P.), R.P. M.L.'
WHERE
    b.title = 'La Voie Royale';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Guérard des Lauriers (O.P.), R.P. M.L.'
WHERE
    b.title = 'La Présence Réelle du Verbe incarné dans les Espèces Consacrées';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Guérard des Lauriers (O.P.), R.P. M.L.'
WHERE
    b.title = 'Réflexion sur le Novus Ordo Missae';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Haupt, Jean'
WHERE
    b.title = 'Le procès de la démocratie';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Lebbe, R.P.'
WHERE
    b.title = 'Histoires chinoises du Père Lebbe';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Lemann, abbé Joseph'
WHERE
    b.title = 'La Dame des nations dans l''Europe catholique';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Lenotre, Georges'
WHERE
    b.title = 'Paris révolutionnaire';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Lenotre, Georges'
WHERE
    b.title = 'Vieilles maisons, vieux papiers';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Lhomond'
WHERE
    b.title = 'Histoire de la religion avant la venue du Christ';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Libermann, Vénérable Père F.-M. P.'
WHERE
    b.title = 'La doctrine des lettres spirituelles';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Maitre, abbé Joseph'
WHERE
    b.title = 'Les papes et la papauté de 1143 à la fin du monde d''après la prophétie attribuée à saint Malachie';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Marmion, Dom Columba'
WHERE
    b.title = 'Le Christ Vie de l''âme';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Marmion, Dom Columba'
WHERE
    b.title = 'Le Christ, idéal du moine';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Martigues, Claire'
WHERE
    b.title = 'Le Pacte de Reims';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Mercier, Louis'
WHERE
    b.title = 'Les pierres sacrées / Poèmes de la tranchée';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Pègue (O.P.), R.P. Thomas'
WHERE
    b.title = 'La somme théologique de St. Thomas  en forme de catéchisme pour tous les fidèles';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Pie IX, Grégoire XVI, Pie VII'
WHERE
    b.title = 'Lettres apostoliques de Pie IX, Grégoire XVI, Pie VII';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Pie, Cardinal'
WHERE
    b.title = 'Instructions pastorales sur les malheurs actuels de la France (Carême 1871)';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Poullin, Marcel'
WHERE
    b.title = 'Histoire de Jeanne d''Arc';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Rodriguez, R.P. Alphonse'
WHERE
    b.title = 'Pratique de la perfection chrétienne';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Sanborn, Mgr Donald J.'
WHERE
    b.title = 'Explications de la thèse de Cassiciacum';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Ségur, Comtesse de'
WHERE
    b.title = 'Evangile d''une grand''mère';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Thérèse de l''Enfant Jésus, Sainte'
WHERE
    b.title = 'Histoire d''une âme';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Tour-du-Pin la Charce, René de la'
WHERE
    b.title = 'Vers un ordre social chrétien';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Trochu, Mgr. Francis'
WHERE
    b.title = 'Saint François de Sales';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Trochu, Mgr. Francis'
WHERE
    b.title = 'Le Curé d''Ars, saint Jean-Marie Vianney (1786 - 1859)';


INSERT INTO
    books_authors (book_id, author_id)
SELECT
    b.id,
    a.id
FROM
    books AS b
    JOIN authors AS a ON a.full_name = 'Villéon, Ombline P. de la'
WHERE
    b.title = 'La Bienheureuse Marguerite de Lorraine';
