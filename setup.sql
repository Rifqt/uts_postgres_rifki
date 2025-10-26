-- Schema
CREATE SCHEMA IF NOT EXISTS salam;

-- Table
CREATE TABLE salam.mahasiswas (
    nim VARCHAR(10) PRIMARY KEY,
    nama VARCHAR(50) UNIQUE,
    umur INT CHECK (umur >= 17)
);

-- Contoh data
INSERT INTO salam.mahasiswas VALUES ('101', 'Budi', 20);
INSERT INTO salam.mahasiswas VALUES ('102', 'Sari', 21);
INSERT INTO salam.mahasiswas VALUES ('103', 'Rina', 22);

-- Role 1: backend_dev → CRUD
CREATE USER backend_dev WITH PASSWORD 'backend123';
GRANT CONNECT ON DATABASE postgres TO backend_dev;
GRANT USAGE ON SCHEMA salam TO backend_dev;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA salam TO backend_dev;

-- Role 2: bi_dev → hanya SELECT
CREATE USER bi_dev WITH PASSWORD 'bi123';
GRANT CONNECT ON DATABASE postgres TO bi_dev;
GRANT USAGE ON SCHEMA salam TO bi_dev;
GRANT SELECT ON ALL TABLES IN SCHEMA salam TO bi_dev;

-- Role 3: data_engineer → CREATE, MODIFY, DROP semua objek
CREATE USER data_engineer WITH PASSWORD 'engineer123';
GRANT CONNECT ON DATABASE postgres TO data_engineer;
GRANT USAGE ON SCHEMA salam TO data_engineer;
GRANT CREATE ON SCHEMA salam TO data_engineer;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA salam TO data_engineer;
