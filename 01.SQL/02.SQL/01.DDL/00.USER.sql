CREATE USER agata_user WITH PASSWORD 'asd.456';
CREATE ROLE administrator;

CREATE DATABASE db_agata;

-- Permisos en base de datos Agata
GRANT INSERT, SELECT,DELETE, UPDATE ON ALL TABLES IN SCHEMA public TO administrator;
GRANT USAGE, SELECT, UPDATE ON ALL SEQUENCES IN SCHEMA public TO administrator;

GRANT administrator TO agata_user;