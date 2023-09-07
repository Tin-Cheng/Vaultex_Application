import React, { Component } from 'react';

export class FetchEmployees extends Component {
  static displayName = FetchEmployees.name;

  constructor(props) {
    super(props);
    this.state = { employees: [], loading: true };
  }

  componentDidMount() {
    this.populateEmployeeData();
  }

  static renderEmployeesTable(employees) {
    return (
      <table className="table table-striped" aria-labelledby="tableLabel">
        <thead>
          <tr>
            <th>OrganisationNumber</th>
            <th>FirstName</th>
            <th>LastName</th>
          </tr>
        </thead>
        <tbody>
          {employees.map((employee,index)=>
            <tr key={index}>
              <td>{employee.organisationNumber}</td>
              <td>{employee.firstName}</td>
              <td>{employee.lastName}</td>
            </tr>
          )}
        </tbody>
      </table>
    );
  }

  render() {
    let contents = this.state.loading
      ? <p><em>Loading...</em></p>
      : FetchEmployees.renderEmployeesTable(this.state.employees);

    return (
      <div>
        <h1 id="tableLabel">Employee</h1>
        <p>This component demonstrates fetching data from the server.</p>
        {contents}
      </div>
    );
  }

  async populateEmployeeData() {
    const response = await fetch('employee');
    const data = await response.json();
    this.setState({ employees: data, loading: false });
  }
}
