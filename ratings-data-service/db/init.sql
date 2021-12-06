CREATE TABLE USER_RATINGS(
    ID SERIAL PRIMARY KEY,
    USER_ID INT NOT NULL,
    MOVIE_ID INT NOT NULL,
    RATING INT NOT NULL
)
;

COPY USER_RATINGS(USER_ID, MOVIE_ID, RATING) 
FROM '/docker-entrypoint-initdb.d/user_ratings_data.csv' 
WITH CSV HEADER
;