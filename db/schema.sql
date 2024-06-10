DROP DATABASE IF EXISTS perfume_db;
CREATE DATABASE perfume_db;
USE perfume_db;


--Create the designer table before the perfume table because the perfume still needs information from the designer table.
CREATE TABLE designer(
    designer_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    designer_name VARCHAR(40) Not NULL,
    CONSTRAINT pk_designer PRIMARY KEY (designer_id)
);


CREATE TABLE perfume(
    perfume_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    perfume_name VARCHAR(40) NOT NULL,
    designer_id TINYINT UNSIGNED NOT NULL,
    launched YEAR NOT NULL, 
    perfume_size DECIMAL(2,2), 
    prefume_type ENUM('gift set', 'perfume spray' ) NOT NULL,
    perfume_picture MEDIUMTEXT NOT NULL,
    inventory TINYINT, 
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT pk_perfume PRIMARY KEY (perfume_id),
    CONSTRAINT fk_designer FOREIGN KEY (designer_id) REFERENCES designer (designer_id)
);


CREATE TABLE scent(
    scent_id TINYINT UNSIGNED AUTO_INCREMENT NOT NULL,
    scent VARCHAR(40),
    CONSTRAINT pk_scent PRIMARY KEY (scent_id)   
);

CREATE TABLE perfume_to_scent(
    perfume_id TINYINT UNSIGNED NOT NULL,
    scent_id TINYINT UNSIGNED NOT NULL,
    CONSTRAINT fk_perfume FOREIGN KEY (perfume_id) REFERENCES  perfume (perfume_id),   
    CONSTRAINT fk_scent FOREIGN KEY (scent_id) REFERENCES scent (scent_id)
);

ALTER TABLE perfume
MODIFY COLUMN perfume_size DECIMAL(2,1);
