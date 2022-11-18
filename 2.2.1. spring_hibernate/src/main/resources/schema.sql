DROP table if exists users;
DROP table if exists car;

CREATE TABLE IF NOT EXISTS car
(
    id     bigint       NOT NULL AUTO_INCREMENT PRIMARY KEY,
    model  varchar(255) NOT NULL,
    series int          NOT NULL
);

CREATE TABLE IF NOT EXISTS users
(
    id        bigint       NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name      varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    email     varchar(255) NOT NULL,
    car_id    bigint          NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car (id)
);
