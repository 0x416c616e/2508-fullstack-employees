--have to edit package.json:
    --    "db:schema": "psql -U postgres -f ./db/schema.sql",
    --change: adding the "-U postgres" part
    --change: get rid of the "-d fullstack_employees" part


    --then run: npm run db:schema
    --then run: npm run db:seed



DROP DATABASE IF EXISTS fullstack_employees;
CREATE DATABASE fullstack_employees;
\c fullstack_employees; --equivalent to "USE fullstack_employees" in T-SQL (what I'm familiar with)

DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
  id serial PRIMARY KEY,
  name text NOT NULL,
  birthday date NOT NULL,
  salary integer NOT NULL
);
