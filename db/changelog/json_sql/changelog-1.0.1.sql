--liquibase formatted sql

--changeset author:changelog-1.0.1-1
INSERT INTO users VALUES (1, 'david', 'david@test.com');