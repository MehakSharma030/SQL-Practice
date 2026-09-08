---------------------------------
--------DATA TYPES---------------
---------------------------------

-- numeric data type 

CREATE TABLE numeric_demo(
  id INT,
  age INT,
  salary DECIMAL(10,2),
  rating DOUBLE
);

-- string data type

CREATE TABLE str_demo(
  name CHAR(10),
  city VARCHAR(50),
  description TEXT  -- TEXT : for large text
);

-- date and time types
CREATE TABLE dataTime(
  birth_data DATE,
  login_time TIME,
  created_At DATETIME,
  updated_At TIMESTAMP
);

-- boolean data type
CREATE TABLE boolean_demo(
    is_active BOOLEAN
);
