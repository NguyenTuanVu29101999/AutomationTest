using BoDi;
using Microsoft.Extensions.DependencyInjection;
using SolidToken.SpecFlow.DependencyInjection;
using SpecFlow.TestOpenLearn.Drivers;
using SpecFlow.TestOpenLearn.PageObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SpecFlow.TestOpenLearn
{
    public class Startup
    {
        [ScenarioDependencies]
        public static IServiceCollection CreateService()
        {
            var services = new ServiceCollection();

            services.AddScoped<IBrowserDriver, BrowserDriver>();
            services.AddScoped<IHomePageObject, HomePageObject>();
            services.AddScoped<ISearchResultsPageObject, SearchResultsPageObject>();
            services.AddScoped<INewPageObject, NewPageObject>();
            return services;
        }
    }
}
