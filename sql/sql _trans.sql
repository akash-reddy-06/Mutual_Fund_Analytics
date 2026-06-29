CREATE TABLE IF NOT EXISTS fact_transactions (
    txn_id           INTEGER PRIMARY KEY AUTOINCREMENT,
    fund_id          INTEGER NOT NULL,
    date_id          INTEGER NOT NULL,
    investor_id      TEXT,
    transaction_type TEXT CHECK(transaction_type IN ('SIP','Lumpsum','Redemption')),
    amount           REAL CHECK(amount > 0),
    units            REAL,
    nav_at_txn       REAL,
    state            TEXT,
    kyc_status       TEXT,
    FOREIGN KEY (fund_id) REFERENCES dim_fund(fund_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
);
