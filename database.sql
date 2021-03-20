CREATE DATABASE `js-on`;
/* DONE */
CREATE TABLE clock(
    timestamp INTEGER NOT NULL,
    state BOOLEAN NOT NULL
)

/* DONE */
CREATE TABLE food(
    `time` INTEGER NOT NULL,
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
    `sender` TEXT NOT NULL,
    `subject` TEXT NOT NULL,
    `content` TEXT NOT NULL
)

/* DONE */
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

