CREATE DATABASE IF NOT EXISTS radioramapozarica;
USE radioramapozarica;


CREATE TABLE IF NOT EXISTS categoria (
    id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre_categ VARCHAR(255) NOT NULL);

INSERT INTO categoria (nombre_categ) VALUES 
('Regionales'), ('Estatales'), ('Nacionales'), ('Deportes'), ('Entretenimiento'), ('Comentarios');

CREATE TABLE IF NOT EXISTS regionales (
    id_Nreg INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    imagen VARCHAR(255),
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    autor VARCHAR(30),
    status INT DEFAULT 1,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria));

INSERT INTO regionales (title, content, imagen, created_at, autor, status, id_categoria)
VALUES 
('Noticia Regional 1', 'Contenido de la noticia regional 1', '<imagen_blob>', NOW(), 'Autor 1', 1, 1),
('Noticia Regional 2', 'Contenido de la noticia regional 2', '<imagen_blob>', NOW(), 'Autor 2', 1, 2);

CREATE TABLE IF NOT EXISTS estatales (
    id_Nestatal INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    imagen VARCHAR(255),
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    autor VARCHAR(30),
    status INT DEFAULT 1,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria));


INSERT INTO estatales (title, content, imagen, created_at, autor, status, id_categoria)
VALUES 
('Noticia Estatal 1', 'Contenido de la noticia estatal 1', '<imagen_blob>', NOW(), 'Autor 1', 1, 1),
('Noticia Estatal 2', 'Contenido de la noticia estatal 2', '<imagen_blob>', NOW(), 'Autor 2', 1, 2);

CREATE TABLE IF NOT EXISTS nacionales (
    id_Nnacional INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    imagen VARCHAR(255),
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    autor VARCHAR(30),
    status INT DEFAULT 1,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria));


INSERT INTO nacionales (title, content, imagen, created_at, autor, status, id_categoria)
VALUES 
('Noticia Nacional 1', 'Contenido de la noticia nacional 1', '<imagen_blob>', NOW(), 'Autor 1', 1, 1),
('Noticia Nacional 2', 'Contenido de la noticia nacional 2', '<imagen_blob>', NOW(), 'Autor 2', 1, 2);

CREATE TABLE IF NOT EXISTS deportes (
    id_Ndeporte INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    imagen VARCHAR(255),
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    autor VARCHAR(30),
    status INT DEFAULT 1,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria));


INSERT INTO deportes (title, content, imagen, created_at, autor, status, id_categoria)
VALUES 
('Noticia Deportiva 1', 'Contenido de la noticia deportiva 1', '<imagen_blob>', NOW(), 'Autor 1', 1, 1),
('Noticia Deportiva 2', 'Contenido de la noticia deportiva 2', '<imagen_blob>', NOW(), 'Autor 2', 1, 2);

CREATE TABLE IF NOT EXISTS entretenimiento (
    id_Nentretenimiento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT,
    imagen VARCHAR(255),
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    autor VARCHAR(30),
    status INT DEFAULT 1,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria));

INSERT INTO entretenimiento (title, content, imagen, created_at, autor, status, id_categoria)
VALUES 
('Noticia de Entretenimiento 1', 'Contenido de la noticia de entretenimiento 1', '<imagen_blob>', NOW(), 'Autor 1', 1, 1),
('Noticia de Entretenimiento 2', 'Contenido de la noticia de entretenimiento 2', '<imagen_blob>', NOW(), 'Autor 2', 1, 2);

CREATE TABLE IF NOT EXISTS comentarios (
    id_comentario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    edad INT NULL,
    texto TEXT NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP);


CREATE TABLE IF NOT EXISTS post (
    id_post INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    contenido TEXT,
    imagen LONGBLOB,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    status INT DEFAULT 1,
    id_subcategoria INT NOT NULL,
    FOREIGN KEY (id_subcategoria) REFERENCES subcategoria(id_subcategoria));


CREATE TABLE IF NOT EXISTS usuario (
    id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    nom_usuario VARCHAR(50),
    email VARCHAR(255),
    password VARCHAR(255),
    imagen VARCHAR(255),
    status INT DEFAULT 1,
    kind INT DEFAULT 1,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP);



INSERT INTO usuario (nombre, apellido, nom_usuario, email, password, kind, created_at)
VALUES 
("Administrator", "Admin", "admin", "admin@example.com", '$2y$12$4S1M7jyS1nLfLgY0x9s0e.B8pJRRrY5HSDQMAkZNR9BF9/MV9oBzi', 1, NOW());

