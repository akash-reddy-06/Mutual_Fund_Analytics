CREATE TABLE IF NOT EXISTS dim_date (
    date_id    INTEGER PRIMARY KEY AUTOINCREMENT,
    full_date  TEXT NOT NULL UNIQUE,  -- YYYY-MM-DD
    year       INTEGER,
    quarter    INTEGER,
    month      INTEGER,
    month_name TEXT,
    week       INTEGER,
    day        INTEGER,
    is_weekend INTEGER DEFAULT 0
);