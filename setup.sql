-- Create task table
CREATE TABLE status (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(256)
);
CREATE TABLE task (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    summary VARCHAR(256),
    description TEXT,
    status_id INTEGER,
    active BOOLEAN DEFAULT 1,
    FOREIGN KEY(status_id) REFERENCES status(id)
);

INSERT INTO status ( name ) VALUES ( "to do" );
INSERT INTO status ( name ) VALUES ( "in progress" );
INSERT INTO status ( name ) VALUES ( "done" );

INSERT INTO task(
    summary,
    description,
    status_id
) VALUES (
    "Do the laundry",
    "Put cloths in the washing machine",
    1
);
INSERT INTO task(
    summary,
    description,
    status_id
) VALUES (
    "Buy groceries",
    "Put the groceries away",
    1
);
INSERT INTO task(
    summary,
    description,
    status_id
) VALUES (
    "Walk the dog",
    "Get the dog rerady to go outide",
    1
);