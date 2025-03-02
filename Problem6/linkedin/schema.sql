CREATE TABLE IF NOT EXISTS Users (
    id MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    username VARCHAR(255),
    password VARCHAR(255),
    college_id MEDIUMINT,
    company_id MEDIUMINT,
    FOREIGN KEY(college_id) REFERENCES Colleges(id),
    FOREIGN KEY(company_id) REFERENCES Companies(id)
);

CREATE TABLE IF NOT EXISTS Colleges (
    id MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255),
    year SMALLINT
);

CREATE TABLE IF NOT EXISTS Companies (
    id MEDIUMINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    industry VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    country VARCHAR(255)
);

