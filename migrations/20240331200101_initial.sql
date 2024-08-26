-- initial authentication :3
CREATE TABLE users (
    id INT PRIMARY KEY NOT NULL,
    token TEXT,
    token_expiration BIGINT
);
