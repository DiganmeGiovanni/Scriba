CREATE TABLE user(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(500) NOT NULL
);

CREATE TABLE car(
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,

    CONSTRAINT fk_user FOREIGN KEY (user_id)
        REFERENCES user(id)
)