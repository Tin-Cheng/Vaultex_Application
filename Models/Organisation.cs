﻿using System;
using System.Collections.Generic;

namespace Vaultex_Application.Models;

public partial class Organisation
{
    public string? OrganisationName { get; set; }

    public string OrganisationNumber { get; set; } = null!;

    public string? AddressLine1 { get; set; }

    public string? AddressLine2 { get; set; }

    public string? AddressLine3 { get; set; }

    public string? AddressLine4 { get; set; }

    public string? Town { get; set; }

    public string? Postcode { get; set; }
}
