CREATE TABLE example_table (
    id NUMBER,                                   -- Numeric data types
    name VARCHAR2(100),                          -- Character string data types
    description CLOB,                            -- Large character string data types
    created_at DATE,                             -- Date and time data types
    updated_at TIMESTAMP(3),                     -- Date and time data types with fractional seconds
    is_active NUMBER(1) DEFAULT 1,               -- Number used as boolean
    salary FLOAT(126),                           -- Floating-point number
    binary_data BLOB,                            -- Binary large object
    duration INTERVAL DAY TO SECOND(6),          -- Interval data types
    yearly_quota INTERVAL YEAR TO MONTH,         -- Interval data types
    photo BFILE,                                 -- Binary file stored outside of the database
    address RAW(2000),                           -- Raw binary data
    latitude BINARY_FLOAT,                       -- Single-precision floating-point number
    longitude BINARY_DOUBLE,                     -- Double-precision floating-point number
    CONSTRAINT pk_example_table PRIMARY KEY (id) -- Primary key constraint
);

-- Sample insert statement
INSERT INTO example_table (
    id, 
    name, 
    description, 
    created_at, 
    updated_at, 
    is_active, 
    salary, 
    binary_data, 
    duration, 
    yearly_quota, 
    photo, 
    address, 
    latitude, 
    longitude
) VALUES (
    1, 
    'Sample Name', 
    'This is a sample description for the example table in Oracle.', 
    SYSDATE, 
    CURRENT_TIMESTAMP, 
    1, 
    75000.00, 
    EMPTY_BLOB(), 
    INTERVAL '2' DAY, 
    INTERVAL '1-3' YEAR TO MONTH, 
    BFILENAME('DIRECTORY', 'photo.jpg'), 
    HEXTORAW('48656C6C6F20576F726C64'), -- 'Hello World' in hex
    BINARY_FLOAT(37.7749), 
    BINARY_DOUBLE(-122.4194)
);
