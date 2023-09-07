# Vaultex_Application

This is an application built using React with ASP.NET Core template.
You may use this as a reference: https://learn.microsoft.com/en-us/aspnet/core/client-side/spa/react?view=aspnetcore-7.0&tabs=visual-studio


The database used is Microsoft SQL server.
If you wish to test with your device, please check the databaseSetup file and use the sample tables and data there.

The models are created by scaffolding the database with Entity Framework Core as ORM.
Currently, the models are using names directly from database.

The frontend framework is React.
The following is the screen of fetching data.


<img width="1319" alt="organisation" src="https://github.com/Tin-Cheng/Vaultex_Application/assets/73582264/d0745fe1-81d9-4dd5-96d0-8f6e8cf4e162">


<img width="1331" alt="employee" src="https://github.com/Tin-Cheng/Vaultex_Application/assets/73582264/3fda42b4-1f15-4311-95da-e1bbf40c551a">


This is the beginning of our project and we can work on the following to improve the project:
- General
  -  Modify raw column names to user friendly names
  -  Include relevant filters
  -  Loggings
  -  Paging
  -  Unit tests
-  Organisation
  - Add count of employee under each organisation
  - When a record is clicked, link to employee page with organisation filter
- Employee
  - Use organisation name as subtitle
  - link to organisation
