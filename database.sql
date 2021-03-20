CREATE DATABASE `user-1`;
CREATE TABLE clock(
    timestamp INTEGER NOT NULL,
    state BOOLEAN NOT NULL
)

CREATE TABLE food(
    `meal_id` INTEGER NOT NULL
)

CREATE TABLE calendar(
    `cal_id` INTEGER NOT NULL UNIQUE,
    `title` TEXT NOT NULL,
    `location` TEXT NOT NULL,
    `ts_from` INTEGER NOT NULL,
    `ts_to` INTEGER NOT NULL,
    `description` TEXT NOT NULL
)

CREATE TABLE notifications(
    `date` INTEGER NOT NULL,
    `from` TEXT NOT NULL,
    `subject` TEXT NOT NULL,
    `content` TEXT NOT NULL
)

CREATE DATABASE `settings`;
CREATE TABLE user(
    `user_id` INTEGER NOT NULL UNIQUE,
    `email` TEXT NOT NULL UNIQUE,
    `password` TEXT NOT NULL,
    `avatar` TEXT NOT NULL,
    `name` TEXT NOT NULL,
    `phone` TEXT NOT NULL,
    `joke_account` INTEGER NOT NULL
)

CREATE DATABASE `health`;
CREATE TABLE meals(
    `meal_id` INTEGER NOT NULL UNIQUE,
    `health_points` INTEGER NOT NULL,
    `name` TEXT NOT NULL UNIQUE,
    `description` TEXT NOT NULL,
    `allergics` TEXT NOT NULL,
)