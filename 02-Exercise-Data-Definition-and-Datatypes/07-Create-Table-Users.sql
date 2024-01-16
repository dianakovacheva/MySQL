USE minions;
    
CREATE TABLE users (
    id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) UNIQUE NOT NULL,
    password VARCHAR(26) NOT NULL,
    profile_picture BLOB,
    last_login_time DATETIME,
    is_deleted BOOL
);

INSERT INTO users(username, password, profile_picture, last_login_time, is_deleted)
VALUES 
("Diana", "123456", "test", NOW(), false),
("Hristo", "123456", "test",  NOW(), false),
("Maya", "123456", "test",  NOW(), true),
("Petar", "123456", "test",  NOW(), false),
("Martin", "123456", "test",  NOW(), true);