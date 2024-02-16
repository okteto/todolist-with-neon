-- Check if the database already exists
SELECT 'CREATE DATABASE todolist'
WHERE NOT EXISTS (SELECT FROM pg_database WHERE datname = 'todolist');

-- Create the "todos" table
CREATE TABLE IF NOT EXISTS todo (
  todo_id SERIAL PRIMARY KEY,
  description VARCHAR(255) NOT NULL
);

-- Create sample data
INSERT INTO todo(description) VALUES('Create the database');
INSERT INTO todo(description) VALUES('Seed the data');
INSERT INTO todo(description) VALUES('Integrate okteto and neon');
INSERT INTO todo(description) VALUES('Profit!');