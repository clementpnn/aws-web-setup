CREATE TABLE links (
    id STRING(36) NOT NULL,
    long_url STRING(MAX) NOT NULL,
    short_url STRING(10) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT unique_short_url UNIQUE (short_url),
    CONSTRAINT unique_long_url UNIQUE (long_url)
);
