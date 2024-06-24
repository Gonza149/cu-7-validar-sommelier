CREATE TABLE sommelier (
    _id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    nro_documento BIGINT NOT NULL,
    telefono BIGINT NOT NULL,
    email VARCHAR(50) NOT NULL,
    sommelierValidado BOOLEAN
);

CREATE TABLE certificacion (
    _Id SERIAL PRIMARY KEY,
    url VARCHAR(200) NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(256) NOT NULL,
    fechaInicio DATE NOT NULL,
    fechaFin DATE NOT NULL,
    institucion VARCHAR(100) NOT NULL,
    sommelier INTEGER REFERENCES sommelier(_id) NOT NULL
);


CREATE TABLE resenia (
    _id SERIAL PRIMARY KEY,
    fechaResenia DATE NOT NULL,
    comentario VARCHAR(256) NOT NULL,
    puntaje INTEGER,
    sommelier INTEGER REFERENCES sommelier(_id) NOT NULL
);
