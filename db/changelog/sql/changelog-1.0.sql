--liquibase formatted sql

--changeset author:changelog-1.0-1
CREATE DATABASE IF NOT EXISTS test COLLATE 'utf8mb4_general_ci';
CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

--changeset author:changelog-1.0-2
ALTER TABLE users ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;