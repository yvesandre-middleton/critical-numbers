DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS c02_levels;

CREATE TABLE user (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE c02_levels (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  author_id INTEGER NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  c02_mean_1959 integer NOT NULL,
  c02_mean_current integer NOT NULL,
  c02_recent_global_avg_annual_increase integer NOT NULL,
  FOREIGN KEY (author_id) REFERENCES user (id)
);

