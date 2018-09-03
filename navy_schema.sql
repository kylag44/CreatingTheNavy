SELECT 'hello, SQLite';

CREATE TABLE fleets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fleetsName TEXT
  );

CREATE TABLE ships (
    shipsId INTEGER PRIMARY KEY AUTOINCREMENT,
    fleetsId INTEGER,
    shipsName TEXT,
    shipsDateBuilt INTEGER,
    FOREIGN KEY (fleetsId) REFERENCES fleets(id)
);

CREATE TABLE sailors (
    sailorsId INTEGER PRIMARY KEY AUTOINCREMENT,
    sailorsName TEXT,
    sailorsDOB INTEGER,
    shipsID INTEGER,
    FOREIGN KEY (shipsId) REFERENCES ships(shipsId)
);

CREATE TABLE duty (
    dutyId INTEGER PRIMARY KEY AUTOINCREMENT,
    dutyName TEXT,
    dutyTourOfDuty INTEGER,
    dutyRank INTEGER,
    sailorsId INTEGER,
    FOREIGN KEY (sailorsId) REFERENCES sailors(sailorsId)
);

--CREATE TABLE fleets (id INTEGER PRIMARY KEY,
                   --name TEXT);
--CREATE TABLE ship (id INTEGER PRIMARY KEY,
                  -- name TEXT,
                   --fleet_id INTEGER,
                  -- FOREIGN KEY (fleet_id) REFERENCES fleets(id));
