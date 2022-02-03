CREATE TABLE Users (
  id INT NOT NULL UNIQUE,
  username CHAR(100),
  password_hash BINARY(64) NOT NULL,
  first_name CHAR(100),
  location_city CHAR(100),
  location_state CHAR(100),
  is_curator BOOLEAN,
  email CHAR(100),
  instagram CHAR(100),
  facebook CHAR(100),
  tiktok CHAR(100),
  whatsapp CHAR(100),
  twitter CHAR(100),
  pinterest CHAR(100),
  last_login TIMESTAMP,
  registered_at TIMESTAMP,
  closet_id INT,
  PRIMARY KEY (id),
);

CREATE TABLE Closets (
  id INT NOT NULL UNIQUE,
  is_character BOOLEAN,
  last_modified TIMESTAMP,
  created_at TIMESTAMP
  outfit_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (closet_owner) REFERENCES Users(id),
);