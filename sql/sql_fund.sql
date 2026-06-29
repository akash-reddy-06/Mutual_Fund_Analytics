CREATE TABLE IF NOT EXISTS dim_fund (
    fund_id       INTEGER PRIMARY KEY AUTOINCREMENT,
    amfi_code     TEXT NOT NULL UNIQUE,
    scheme_name   TEXT NOT NULL,
    fund_house    TEXT,
    category      TEXT,
    sub_category  TEXT,
    risk_grade    TEXT,
    fund_type     TEXT
);