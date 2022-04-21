using OpenQA.Selenium;
using SpecFlow.TestOpenLearn.Drivers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SpecFlow.TestOpenLearn.PageObjects
{
    public interface IHomePageObject
    {
        string HomeUrl { get; }

        void EnterIntoSearchFor(string input);
        void ClickButtonSearchFor();
        void EnterIntoBannerSearch(string input);
        void ClickBannerButtonSearch();
        void ClickMenuButton();
        bool VisibleAllElement();
    }

    public class HomePageObject : IHomePageObject
    {
        private readonly IBrowserDriver _browserDriver;

        public HomePageObject(IBrowserDriver browserDriver)
        {
            _browserDriver = browserDriver;
        }

        public string HomeUrl => "https://www.open.edu/openlearn/";

        // Finding elements
        private IWebElement LogoElement => _browserDriver.Current.FindElement(By.XPath("//div[@id='main_header']//a[@class='hslogo logo-image']//img"));
        private IWebElement OpenLearnLogoElement => _browserDriver.Current.FindElement(By.XPath("//div[@id='main_header']//div[@class='main-logo']//img"));
        private IWebElement TagLineElement => _browserDriver.Current.FindElement(By.XPath("//div[@id='main_wrapper']//div[@class='tagline']//a[1]"));
        private IWebElement TheOpenUniversityElement => _browserDriver.Current.FindElement(By.XPath("//ul[@id='sbhsnavigation']//li[@class='first']//a[contains(text(),'The Open University')]"));
        private IWebElement StudyWithTheOpenUniversityElement => _browserDriver.Current.FindElement(By.XPath("//ul[@id='sbhsnavigation']//a[contains(text(),'Study with The Open University')]"));
        private IWebElement SearchForElement => _browserDriver.Current.FindElement(By.XPath("//div[@id='main_header']//label[@class='main_search_label'][contains(text(),'Search for')]"));
        private IWebElement SearchInputElement => _browserDriver.Current.FindElement(By.XPath("//input[@id='main_search_text_header_sticky']"));
        private IWebElement ButtonSearchElement => _browserDriver.Current.FindElement(By.XPath("//div[@id='main_header']//button[@class='search icon-search']"));
        private IWebElement LinkHomeElement => _browserDriver.Current.FindElement(By.XPath("//div[@id='mainMenu-left']//a[contains(text(),'Home')]"));
        private IWebElement LinkFreeCoursesElement => _browserDriver.Current.FindElement(By.XPath("//div[@id='mainMenu-left']//a[contains(text(),'Free courses')]"));
        private IWebElement LinkSubjectsElement => _browserDriver.Current.FindElement(By.XPath("//div[@id='mainMenu-left']//a[contains(text(),'Subjects')]"));
        private IWebElement LinkForStudyElement => _browserDriver.Current.FindElement(By.XPath("//div[@id='mainMenu-left']//a[contains(text(),'For Study')]"));
        private IWebElement LinkForLifeElement => _browserDriver.Current.FindElement(By.XPath("//div[@id='mainMenu-left']//a[contains(text(),'For Life')]"));
        private IWebElement LinkHelpElement => _browserDriver.Current.FindElement(By.XPath("//div[@id='mainMenu-left']//a[contains(text(),'Help')]"));
        private IWebElement LinkSignInElement => _browserDriver.Current.FindElement(By.XPath("//a[@class='openlearnng_signin_signout btn-sidebar btn-olive']"));
        private IWebElement MainImageElement => _browserDriver.Current.FindElement(By.XPath("//div[@class='gradient-img']//img"));
        private IWebElement BannerHeadingElement => _browserDriver.Current.FindElement(By.XPath("//h1[@id='banner_search_label']"));
        private IWebElement BannerSubHeadingElement => _browserDriver.Current.FindElement(By.XPath("//p[@id='banner_search_sub_label']"));
        private IWebElement BannerSearchInputElement => _browserDriver.Current.FindElement(By.XPath("//input[@id='banner_search_text']"));
        private IWebElement BannerButtonSearchElement => _browserDriver.Current.FindElement(By.XPath("//a[@class='search']"));
        private IWebElement ButtonScrollElement => _browserDriver.Current.FindElement(By.XPath("//a[@id='scroll-content']"));


        //Find Element Button/Links


        public bool VisibleAllElement()
        {
            return LogoElement.Displayed
                && OpenLearnLogoElement.Displayed
                && TagLineElement.Displayed
                && TheOpenUniversityElement.Displayed
                && StudyWithTheOpenUniversityElement.Displayed
                && SearchForElement.Displayed
                && SearchInputElement.Displayed
                && ButtonSearchElement.Displayed
                && LinkHomeElement.Displayed
                && LinkFreeCoursesElement.Displayed
                && LinkSubjectsElement.Displayed
                && LinkForStudyElement.Displayed
                && LinkForLifeElement.Displayed
                && LinkHelpElement.Displayed
                && LinkSignInElement.Displayed
                && MainImageElement.Displayed
                && BannerHeadingElement.Displayed
                && BannerSubHeadingElement.Displayed
                && BannerSearchInputElement.Displayed
                && BannerButtonSearchElement.Displayed
                && ButtonScrollElement.Displayed;
        }

        public void EnterIntoSearchFor(string input)
        {
            SearchInputElement.Clear();
            SearchInputElement.SendKeys(input);
        }

        public void ClickButtonSearchFor()
        {
            ButtonSearchElement.Click();
        }

        public void EnterIntoBannerSearch(string input)
        {
            BannerSearchInputElement.Clear();
            BannerSearchInputElement.SendKeys(input);
        }

        public void ClickBannerButtonSearch()
        {
            BannerButtonSearchElement.Click();
        }

        public void ClickMenuButton()
        {
            //LogoElement.Click();
            //OpenLearnLogoElement.Click();
            TagLineElement.Click();
        }

        //public bool VisibleLogoElement()
        //{
        //    return LogoElement.Displayed;
        //}

        //public bool VisibleOpenLearnLogoElement()
        //{
        //    return OpenLearnLogoElement.Displayed;
        //}

        //public bool VisibleTagLineElement()
        //{
        //    return TagLineElement.Displayed;
        //}

        //public bool VisibleTheOpenUniversityElement()
        //{
        //    return TheOpenUniversityElement.Displayed;
        //}

        //public bool VisibleStudyWithTheOpenUniversityElement()
        //{
        //    return StudyWithTheOpenUniversityElement.Displayed;
        //}

        //public bool VisibleSearchForElement()
        //{
        //    return SearchForElement.Displayed;
        //}

        //public bool VisibleSearchInputElement()
        //{
        //    return SearchInputElement.Displayed;
        //}

        //public bool VisibleButtonSearchElement()
        //{
        //    return ButtonSearchElement.Displayed;
        //}

        //public bool VisibleLinkHomeElement()
        //{
        //    return LinkHomeElement.Displayed;
        //}

        //public bool VisibleLinkFreeCoursesElement()
        //{
        //    return LinkFreeCoursesElement.Displayed;
        //}

        //public bool VisibleLinkSubjectsElement()
        //{
        //    return LinkSubjectsElement.Displayed;
        //}

        //public bool VisibleLinkForStudyElement()
        //{
        //    return LinkForStudyElement.Displayed;
        //}

        //public bool VisibleLinkForLifeElement()
        //{
        //    return LinkForLifeElement.Displayed;
        //}

        //public bool VisibleLinkHelpElement()
        //{
        //    return LinkHelpElement.Displayed;
        //}

        //public bool VisibleLinkSignInElement()
        //{
        //    return LinkSignInElement.Displayed;
        //}

        //public bool VisibleMainImageElement()
        //{
        //    return MainImageElement.Displayed;
        //}

        //public bool VisibleBannerHeadingElement()
        //{
        //    return BannerHeadingElement.Displayed;
        //}

        //public bool VisibleBannerSubHeadingElement()
        //{
        //    return BannerSubHeadingElement.Displayed;
        //}

        //public bool VisibleBannerSearchInputElement()
        //{
        //    return BannerSearchInputElement.Displayed;
        //}

        //public bool VisibleBannerButtonSearchElement()
        //{
        //    return BannerButtonSearchElement.Displayed;
        //}

        //public bool VisibleButtonScrollElement()
        //{
        //    return ButtonScrollElement.Displayed;
        //}
    }
}
