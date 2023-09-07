# Vaultex_Application

This is an application built using React with ASP.NET Core template.

The database used is Microsoft SQL server.
If you wish to test with your device, please check the databaseSetup file and use the sample tables and data there.

The models are created by scaffolding the database with Entity Framework Core as ORM.
Currently, the models are using names directly from database.

The frontend framework is React.
The following is the screen of fetching data.
<img width="1425" alt="organisation" src="https://github.com/Tin-Cheng/Vaultex_Application/assets/73582264/8dfdaff9-c769-415c-9adc-ea9ffe2c6d14">
<img width="1430" alt="employee" src="https://github.com/Tin-Cheng/Vaultex_Application/assets/73582264/fc8a4624-d2d3-4d79-92a4-a8d72feac0c9">

This is the beginning of our project and we can work on the following to improve the project:
- General
  -  Modify raw column names to user friendly names
  -  Include relevant filters
-  Organisation
  - Add count of employee under each organisation
  - When a record is clicked, link to employee page with organisation filter
- Employee
  - Use organisation name as subtitle
  - link to organisation
