-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table Users
--
-- ---

DROP DATABASE IF EXISTS groupfoodie;
CREATE DATABASE groupfoodie;

\c groupfoodie;

DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
  id SERIAL NOT NULL,
  first_name VARCHAR NULL,
  last_name VARCHAR NULL,
  email VARCHAR NOT NULL,
  username VARCHAR NOT NULL,
  password VARCHAR NOT NULL,
  guest BOOLEAN NULL,
  PRIMARY KEY (id)
);

-- ---
-- Table friends_join_table
--
-- ---

DROP TABLE IF EXISTS friends_join_table CASCADE;

CREATE TABLE friends_join_table (
  id SERIAL NOT NULL,
  user_id INTEGER NOT NULL,
  friend_id INTEGER NOT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Table Orders
--
-- ---

DROP TABLE IF EXISTS orders CASCADE;

CREATE TABLE orders (
  id SERIAL NOT NULL,
  user_id INTEGER NOT NULL,
  food VARCHAR NULL,
  quantity INTEGER NULL,
  price INTEGER NULL,
  date time NULL,
  group_id INTEGER NOT NULL,
  -- restaurant_id INTEGER NULL,
  PRIMARY KEY (id)
);

-- ---
-- Table Comments
--
-- ---

DROP TABLE IF EXISTS comments CASCADE;

CREATE TABLE comments (
  id SERIAL NOT NULL,
  user_id INTEGER NOT NULL,
  text VARCHAR NULL,
  date time NULL,
  group_id INTEGER NOT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Table Restaurants
--
-- ---

-- DROP TABLE IF EXISTS Restaurants;

-- CREATE TABLE Restaurants (
--   id INTE SERIAL NOT NULL,
--   name INTEGER NULL NULL,
--   cuisine INTEGER NULL NULL,
--   street INTEGER NULL NULL,
--   city INTEGER NULL NULL,
--   state INTEGER NULL NULL,
--   zip_code INTEGER NULL NULL,
--   phone INTEGER NULL NULL,
--   website INTEGER NULL NULL,
--   hours INTEGER NULL NULL,
--   price_range INTEGER NULL NULL,
--   PRIMARY KEY (id)
-- );

-- ---
-- Table Menu_Item
--
-- ---

-- DROP TABLE IF EXISTS Menu_Item;

-- CREATE TABLE Menu_Item (
--   id INTE SERIAL NOT NULL,
--   name INTEGER NULL NULL,
--   description INTEGER NULL NULL,
--   price INTEGER NULL NULL,
--   restaurant_id INTEGER NULL NULL,
--   PRIMARY KEY (id)
-- );

-- ---
-- Table Payment_Info
--
-- ---

DROP TABLE IF EXISTS payment_Info CASCADE;

CREATE TABLE payment_Info (
  id SERIAL NOT NULL,
  name VARCHAR NOT NULL,
  card_number INTEGER NOT NULL,
  card_type VARCHAR NOT NULL,
  exp_date INTEGER NOT NULL,
  cvv INTEGER NOT NULL,
  zip_code INTEGER NOT NULL,
  user_id INTEGER NOT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Table Groups
--
-- ---

DROP TABLE IF EXISTS groups CASCADE;

CREATE TABLE groups (
  id SERIAL NOT NULL,
  time_limit INTEGER NOT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE friends_join_table ADD FOREIGN KEY (user_id) REFERENCES Users (id);
ALTER TABLE friends_join_table ADD FOREIGN KEY (friend_id) REFERENCES Users (id);
ALTER TABLE Orders ADD FOREIGN KEY (user_id) REFERENCES Users (id);
ALTER TABLE Orders ADD FOREIGN KEY (group_id) REFERENCES Groups (id);
-- ALTER TABLE Orders ADD FOREIGN KEY (restaurant_id) REFERENCES Restaurants (id);
ALTER TABLE Comments ADD FOREIGN KEY (user_id) REFERENCES Users (id);
ALTER TABLE Comments ADD FOREIGN KEY (group_id) REFERENCES Groups (id);
-- ALTER TABLE Menu_Item ADD FOREIGN KEY (restaurant_id) REFERENCES Restaurants (id);
ALTER TABLE Payment_Info ADD FOREIGN KEY (user_id) REFERENCES Users (id);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE Users ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE friends_join_table ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Orders ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Comments ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Restaurants ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Menu_Item ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Payment_Info ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE Groups ENGINE=InnoDB CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO Users (id,email,username,password,guest) VALUES
-- ('','','','','');
-- INSERT INTO friends_join_table (id,user_id,friend_id) VALUES
-- ('','','');
-- INSERT INTO Orders (id,user_id,food,`quantity`,`price`,`date`,`group_id`,`restaurant_id`) VALUES
-- ('','','','','','','','');
-- INSERT INTO Comments (id,user_id,text,`date`,`group_id`) VALUES
-- ('','','','','');
-- INSERT INTO Restaurants (id,`name`,`cuisine`,`street`,`city`,`state`,`zip_code`,`phone`,`website`,`hours`,`price_range`) VALUES
-- ('','','','','','','','','','','');
-- INSERT INTO Menu_Item (id,`name`,`description`,`price`,`restaurant_id`) VALUES
-- ('','','','','');
-- INSERT INTO Payment_Info (id,`name`,`card_number`,`exp_date`,`cvv`,`zip_code`,user_id) VALUES
-- ('','','','','','','');
-- INSERT INTO Groups (id,`time_limit`) VALUES
-- ('','');