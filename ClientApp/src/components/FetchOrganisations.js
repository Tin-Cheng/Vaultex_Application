import React, { Component } from 'react';

export class FetchOrganisations extends Component {
  static displayName = FetchOrganisations.name;

  constructor(props) {
    super(props);
    this.state = { organisations: [], loading: true };
  }

  componentDidMount() {
    this.populateOrganisationData();
  }

  static renderOrganisationsTable(organisations) {
    return (
      <table className="table table-striped" aria-labelledby="tableLabel">
        <thead>
          <tr>
            <th>OrganisationNumber</th>
            <th>OrganisationName</th>
            <th>AddressLine1</th>
            <th>AddressLine2</th>
            <th>AddressLine3</th>
            <th>AddressLine4</th>
            <th>Town</th>
            <th>Postcode</th>
          </tr>
        </thead>
        <tbody>
          {organisations.map(organisation =>
            <tr key={organisation.organisationNumber}>
              <td>{organisation.organisationNumber}</td>
              <td>{organisation.organisationName}</td>
              <td>{organisation.addressLine1}</td>
              <td>{organisation.addressLine2}</td>
              <td>{organisation.addressLine3}</td>
              <td>{organisation.addressLine4}</td>
              <td>{organisation.town}</td>
              <td>{organisation.postcode}</td>
            </tr>
          )}
        </tbody>
      </table>
    );
  }

  render() {
    let contents = this.state.loading
      ? <p><em>Loading...</em></p>
      : FetchOrganisations.renderOrganisationsTable(this.state.organisations);

    return (
      <div>
        <h1 id="tableLabel">Organisation</h1>
        <p>This component demonstrates fetching data from the server.</p>
        {contents}
      </div>
    );
  }

  async populateOrganisationData() {
    const response = await fetch('organisation');
    const data = await response.json();
    this.setState({ organisations: data, loading: false });
  }
}
