using System;
using System.Collections.Generic;

namespace Vaultex_Application.Models;

public partial class Employee
{
    public string? OrganisationNumber { get; set; }

    public string? FirstName { get; set; }

    public string? LastName { get; set; }

    public virtual Organisation? OrganisationNumberNavigation { get; set; }
}
