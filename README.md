**1. Install ora2pg**
On Linux: Use your package manager to install ora2pg. For example, on Ubuntu, you would use sudo apt-get install ora2pg.
On Windows: Download the ora2pg ZIP file from the official website, extract it, and follow the installation instructions provided in the documentation.

**2. Configure Oracle Environment**
Set up Oracle environment variables such as ORACLE_HOME and LD_LIBRARY_PATH.
Ensure you have Oracle client libraries installed.

**3. Install PostgreSQL**
Install PostgreSQL on your target system. You can download it from the official PostgreSQL website.

**4. Configure ora2pg**
Create a configuration file for ora2pg. You can do this by copying the ora2pg.conf.dist file to ora2pg.conf and editing it.
Set database connection information for both Oracle (source) and PostgreSQL (target) databases in the ora2pg.conf file.

**5. Test Oracle Connection**
Test the connection to the Oracle database by running ora2pg -t SHOW_VERSION -c ora2pg.conf. This should display the Oracle database version if the connection is successful.

**6. Export Schema**
Export the Oracle database schema. This includes tables, views, sequences, etc.
Run ora2pg -t TABLE -c ora2pg.conf -o tables.sql to export tables.
Repeat the above command for other schema objects like views, sequences, etc., by replacing TABLE with the appropriate type like VIEW, SEQUENCE, etc.

**7. Import Schema into PostgreSQL**
Import the exported schema files into PostgreSQL using psql.
For example: psql -h [hostname] -U [username] -d [database] -f tables.sql.

**8. Export Data**
Export data from Oracle using ora2pg.
Run ora2pg -t COPY -c ora2pg.conf -o data.sql to export table data.

**9. Import Data into PostgreSQL**
Import the data into PostgreSQL using psql.
For example: psql -h [hostname] -U [username] -d [database] -f data.sql.

**10. Export and Import Other Database Objects**
Export and import other database objects such as functions, triggers, and procedures using similar steps.

**11. Verify and Test**
After migration, verify the data and schema in the PostgreSQL database.
Conduct thorough testing to ensure all functionalities are working as expected.

**12. Performance Tuning (Optional)**
Optimize and tune the PostgreSQL database for performance.

**13. Go Live**
Once everything is verified and tested, you can switch your applications to use the new PostgreSQL database.
