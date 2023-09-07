using Microsoft.AspNetCore.Mvc;
using Vaultex_Application.Models;

namespace Vaultex_Application.Controllers;

[ApiController]
[Route("[controller]")]
public class OrganisationController : ControllerBase
{
    private readonly ILogger<OrganisationController> _logger;

    public OrganisationController(ILogger<OrganisationController> logger)
    {
        _logger = logger;
    }

    [HttpGet]
    public IEnumerable<Organisation> Get()
    {
        using (var context = new VaultexDbContext())
        {
            var organisations = context.Organisations.ToArray();
            return organisations;
        }
    }
}
