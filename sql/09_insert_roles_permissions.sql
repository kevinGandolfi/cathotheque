DELETE FROM roles_permissions;


INSERT INTO
roles_permissions (role_id, permission_id)
VALUES
(
    (
        SELECT id
        FROM
            roles
        WHERE
            label = 'admin'
    ),
    (
        SELECT id
        FROM
            permissions
        WHERE
            feature = 'create_book'
    )
);
