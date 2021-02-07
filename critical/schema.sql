DROP TABLE IF EXISTS c02_levels;

CREATE TABLE c02_levels (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  c02_mean_1959 integer NOT NULL,
  c02_mean_current integer NOT NULL,
  c02_meal_1980_global integer NOT NULL,
  c02_mean_current_global integer NOT NULL,
  c02_recent_global_avg_annual_increase integer NOT NULL
);

