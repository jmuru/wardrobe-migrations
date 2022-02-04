BEGIN

CREATE TABLE Users (
  id SERIAL PRIMARY KEY NOT NULL,
  username VARCHAR NOT NULL UNIQUE,
  password_hash BINARY(64) NOT NULL,
  first_name VARCHAR,
  last_name VARCHAR,
  location_city VARCHAR,
  location_state VARCHAR,
  is_curator BOOLEAN,
  email VARCHAR NOT NULL UNIQUE,
  instagram VARCHAR,
  facebook VARCHAR,
  tiktok VARCHAR,
  whatsapp VARCHAR,
  twitter VARCHAR,
  pinterest VARCHAR,
  last_login TIMESTAMP,
  registered_at TIMESTAMP,
  closet_id INT,
);

CREATE TABLE Closets (
  id SERIAL PRIMARY KEY NOT NULL,
  is_character BOOLEAN,
  last_modified TIMESTAMP,
  created_at TIMESTAMP
  outfit_id INT,
  FOREIGN KEY (closet_owner) REFERENCES Users(id),
);

END
