DO $$
DECLARE
    tab TEXT;
BEGIN
    FOR tab IN
        SELECT tablename FROM pg_tables WHERE schemaname = 'public'
    LOOP
        EXECUTE 'DROP TABLE IF EXISTS public.' || quote_ident(tab) || ' CASCADE';
    END LOOP;
END $$;
