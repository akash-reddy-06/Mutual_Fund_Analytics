CREATE TABLE IF NOT EXISTS fact_performance (
    perf_id       INTEGER PRIMARY KEY AUTOINCREMENT,
    fund_id       INTEGER NOT NULL,
    date_id       INTEGER NOT NULL,
    return_1yr    REAL,
    return_3yr    REAL,
    return_5yr    REAL,
    return_ytd    REAL,
    expense_ratio REAL,
    sharpe_ratio  REAL,
    FOREIGN KEY (fund_id) REFERENCES dim_fund(fund_id),
    FOREIGN KEY (date_id) REFERENCES dim_date(date_id)
);