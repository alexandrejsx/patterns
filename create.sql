DROP SCHEMA IF EXISTS patterns CASCADE;

CREATE SCHEMA patterns;

CREATE TABLE patterns.contract (
    id_contract UUID NOT NULL DEFAULT uuid_generate_v4() PRIMARY KEY,
    description TEXT,
    amount NUMERIC,
    periods INTEGER,
    date TIMESTAMP
);

CREATE TABLE patterns.payment (
    id_payment UUID NOT NULL DEFAULT uuid_generate_v4() PRIMARY KEY,
    id_contract UUID REFERENCES patterns.contract (id_contract),
    amount NUMERIC,
    date TIMESTAMP
);

INSERT INTO patterns.contract (id_contract, description, amount, periods, date)
VALUES ('4224a279-c162-4283-86f5-1095f559b08c', 'Prestação de serviços escolares', 6000, 12, '2022-01-01T10:00:00');

INSERT INTO patterns.payment (id_payment, id_contract, amount, date)
VALUES ('c931d9db-c8d8-44d4-8861-b3d6b734c64e', '4224a279-c162-4283-86f5-1095f559b08c', 6000, '2022-01-05T10:00:00');
