# aqms
### Air Quality Monitoring Database
----------
The Air Quality Monitoring Database serves as a framework for recording, storing, and manipulating data from various air quality monitoring equipment. It helps manage various information related to the monitoring equipment, in addition to just recording the measurement data, for further in-depth data analysis.

### Explanation
-------
* Below is the design of the database schema in an ER diagram, along with descriptions of each table.

![alt text](https://github.com/slcheung/aqms/blob/main/ERD.png?raw=true)

| **Table** | **Description** |
| ----- | ----- |
| `equip_data` | This table saves real-time measurement data from various equipment in the `equipment` table for different projects. |
| `equip_loc` | This table provides location information in the `loc` table for a particular equipment in the `equipment` table. |
| `equipment` | This table serves as an inventory list of the equipment. |
| `equip_status` | This table records the status of each equipment in the `equipment` table. |
| `loc` | This table stores the locations of the sites for any monitoring activities. |
| `project` | This table records air quality monitoring campaigns or projects. |
| `project_loc` | This table records the list of locations listed in the `loc` table that are involved in a project. |


### Get Started
------
0. Please note: The above SQL is written in PostgreSQL.
1. . To create the database, load `create_tables.sql`.
2. To load the sample data for testing, load the following files in order: `sample_project.sql`, `sample_equipment.sql`, `sample_location.sql`, `sample_equip_loc.sql`, `sample_equip_data.sql`, `sample_equip_status.sql`, `sample_project_loc.sql`.
3. To query the sample data for a trial, run the following SQL files with the prefix _query_.
4. Any suggestions/comments on the above are welcome :).
