CREATE TABLE IF NOT EXISTS AUTHORS(ID IDENTITY PRIMARY KEY,
                     FORENAME VARCHAR(255),
                     SURNAME VARCHAR(255));

CREATE TABLE IF NOT EXISTS GENRES(ID IDENTITY PRIMARY KEY,
                    NAME VARCHAR(255));

CREATE TABLE IF NOT EXISTS BOOKS(ID IDENTITY PRIMARY KEY,
                   TITLE VARCHAR(255),
                   AUTHORID BIGINT, FOREIGN KEY (AUTHORID) REFERENCES AUTHORS(ID),
                   GENREID BIGINT, FOREIGN KEY (GENREID) REFERENCES GENRES(ID));

CREATE TABLE IF NOT EXISTS COMMENTS(ID IDENTITY PRIMARY KEY,
                   TEXT VARCHAR(65535),
                   BOOKID BIGINT, FOREIGN KEY (BOOKID) REFERENCES BOOKS(ID));

CREATE TABLE IF NOT EXISTS USERS(ID IDENTITY PRIMARY KEY,
                   USERNAME VARCHAR(255),
                   PASSWORD VARCHAR(255));