CREATE TABLE IF NOT EXISTS users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email VARCHAR(50) UNIQUE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    nickname VARCHAR(50) NOT NULL,
    available_loans INT DEFAULT 3,
    created_at TIMESTAMP DEFAULT current_timestamp,
    last_loan TIMESTAMP NULL
);


CREATE TABLE IF NOT EXISTS collections (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title TEXT
);


CREATE TABLE IF NOT EXISTS books (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title TEXT NOT NULL,
    imprimatur TEXT,
    first_edition INT
);


CREATE TABLE IF NOT EXISTS publishers (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    publisher_name TEXT
);


CREATE TABLE IF NOT EXISTS editions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    publication_year INTEGER,
    page_count INT NOT NULL,
    volume_count INT NOT NULL,
    book_id UUID NOT NULL REFERENCES books (id) ON DELETE CASCADE,
    publisher_id UUID NOT NULL REFERENCES publishers (id) ON DELETE CASCADE,
    collection_id UUID REFERENCES collections (id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS copies (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    is_available BOOLEAN DEFAULT TRUE,
    edition_id UUID NOT NULL REFERENCES editions (id) ON DELETE CASCADE
);


CREATE TABLE IF NOT EXISTS authors (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    full_name TEXT NOT NULL
);


CREATE TABLE IF NOT EXISTS books_authors (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    book_id UUID NOT NULL REFERENCES books (id),
    author_id UUID NOT NULL REFERENCES authors (id)
);


CREATE TABLE IF NOT EXISTS reviews (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    review_text TEXT,
    user_id UUID NOT NULL REFERENCES users (id),
    book_id UUID NOT NULL REFERENCES books (id)
);


CREATE TABLE IF NOT EXISTS loan_durations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    label TEXT,
    min_pages INT,
    max_pages INT,
    duration_days INT
);


CREATE TABLE IF NOT EXISTS loans (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users (id),
    copy_id UUID NOT NULL REFERENCES copies (id),
    volume_number INT NOT NULL DEFAULT 1,
    loan_start TIMESTAMP NOT NULL,
    loan_end TIMESTAMP NOT NULL,
    actual_loan_end TIMESTAMP NOT NULL,
    remaining_extension INT DEFAULT 2
);


CREATE TABLE IF NOT EXISTS themes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    label TEXT NOT NULL
);


CREATE TABLE IF NOT EXISTS books_themes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    book_id UUID REFERENCES books (id),
    theme_id UUID REFERENCES themes (id)
);


CREATE TABLE IF NOT EXISTS genres (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    label TEXT
);


CREATE TABLE IF NOT EXISTS books_genres (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    book_id UUID REFERENCES books (id),
    genre_id UUID REFERENCES genres (id)
);


CREATE TABLE IF NOT EXISTS keywords (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    label TEXT
);


CREATE TABLE IF NOT EXISTS books_keywords (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    book_id UUID REFERENCES books (id),
    keyword_id UUID REFERENCES keywords (id)
);
