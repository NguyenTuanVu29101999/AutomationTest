using OpenQA.Selenium;
using SpecFlow.TestOpenLearn.Drivers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SpecFlow.TestOpenLearn.PageObjects
{
    public interface ISearchResultsPageObject
    {
        string GetTitle();
    }

    public class SearchResultsPageObject : ISearchResultsPageObject
    {
        private readonly IBrowserDriver _browserDriver;

        public SearchResultsPageObject(IBrowserDriver browserDriver)
        {
            _browserDriver = browserDriver;
        }

        // Finding elements
        private IWebElement TitleElement => _browserDriver.Current.FindElement(By.TagName("title"));

        public string GetTitle()
        {
            return TitleElement.Text;
        }
    }
}
