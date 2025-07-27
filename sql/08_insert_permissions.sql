DELETE FROM permissions;


INSERT INTO
permissions (feature)
VALUES
(
    'create_book',
    'get_book',
    'update_book',
    'delete_book'
);
