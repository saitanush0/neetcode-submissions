CREATE TYPE status AS ENUM ('active', 'inactive', 'pending');

CREATE TABLE users (
    id INTEGER PRIMARY KEY generated always as identity ,
    name TEXT NOT NULL,
    age INTEGER CHECK (age >= 18),
    status status
);
-- Do not modify above this line --


INSERT INTO users ( name,age, status) VALUES
  ( 'John Doe', 20, 'active'),
  ( 'Jane Doe', 27, 'pending'),
  ( 'John Smith', 28, 'active'),
  ( 'Jane Smith', 30, 'inactive');


-- Do not modify below this line --
SELECT * FROM users;
