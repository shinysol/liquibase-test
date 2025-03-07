--liquibase formatted sql

--changeset author:changelog-1.0.1-1
ALTER TABLE `users`	CHANGE COLUMN `id` `id` INT NOT NULL AUTO_INCREMENT FIRST;

--changeset author:changelog-1.0.1-2
INSERT INTO users (username, email) VALUES ('david', 'david@test.com');

