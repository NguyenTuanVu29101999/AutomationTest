using OpenQA.Selenium;
using SpecFlow.TestOpenLearn.Drivers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SpecFlow.TestOpenLearn.PageObjects
{
    public interface INewPageObject
    {
        void Nextpage();
    }
    public class NewPageObject : INewPageObject
    {
        private readonly IBrowserDriver _browserDriver;

        public NewPageObject(IBrowserDriver browserDriver)
        {
            _browserDriver = browserDriver;
        }

        // Finding elements
        private IWebElement TitleElement => _browserDriver.Current.FindElement(By.XPath("//body/div[@id='int-site']/div[@id='ou-header']/div[@id='ou-logo']/a[1]"));

        public void Nextpage() => TitleElement.Click();
       
    }
}
