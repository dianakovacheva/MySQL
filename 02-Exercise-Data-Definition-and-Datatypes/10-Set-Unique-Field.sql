USE minions;

ALTER TABLE users
DROP PRIMARY KEY,
ADD PRIMARY KEY (id),
ADD CONSTRAINT username_unique UNIQUE (username);