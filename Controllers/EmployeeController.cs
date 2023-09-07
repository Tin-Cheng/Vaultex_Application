using Microsoft.AspNetCore.Mvc;
using Vaultex_Application.Models;

namespace Vaultex_Application.Controllers;

[ApiController]
[Route("[controller]")]
public class EmployeeController : ControllerBase
{
    private readonly ILogger<EmployeeController> _logger;

    public EmployeeController(ILogger<EmployeeController> logger)
    {
        _logger = logger;
    }

    [HttpGet]
    public IEnumerable<Employee> Get()
    {
        using (var context = new VaultexDbContext())
        {
            var employees = context.Employees.ToArray();
            return employees;
        }
    }
}
