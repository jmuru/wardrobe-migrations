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


END;