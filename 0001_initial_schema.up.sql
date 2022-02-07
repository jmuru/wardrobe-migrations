BEGIN

    CREATE TABLE Clothes (
        id SERIAL PRIMARY KEY,
        asset_url VARCHAR UNIQUE NOT NULL,
        category VARCHAR NOT NULL,
        created_at TIMESTAMP,
        created_by BIGINT UNIQUE NOT NULL,
        brand VARCHAR,
        FOREIGN KEY (created_by) REFERENCES Users(id),
    )

    CREATE TABLE Outfits (
        id SERIAL PRIMARY KEY
        outfit_id INT NOT NULL,
        created_by BIGINT UNIQUE NOT NULL,
        created_at TIMESTAMP,
        last_modified TIMESTAMP,
        item_id BIGINT UNIQUE NOT NULL,
        FOREIGN KEY (created_by) REFERENCES Users(id),
        FOREIGN KEY (item_id) REFERENCES Clothes(id),
    )


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
    )

    CREATE TABLE Closets (
        id SERIAL PRIMARY KEY NOT NULL,
        is_character BOOLEAN,
        last_modified TIMESTAMP,
        created_at TIMESTAMP,
        outfit_id INT,
        FOREIGN KEY (closet_owner) REFERENCES Users(id),
    )

END;
