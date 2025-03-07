--liquibase formatted sql

--changeset author:changelog-1.0-1
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

--changeset author:changelog-1.0-2
ALTER TABLE users ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

--changeset author:changelog-1.0-3
INSERT INTO users VALUES (1, 'david', 'david@test.com');