using FluentAssertions;
using OpenQA.Selenium;
using SpecFlow.TestOpenLearn.Drivers;
using SpecFlow.TestOpenLearn.PageObjects;
using System;
using System.Threading;
using TechTalk.SpecFlow;

namespace SpecFlow.TestOpenLearn.Steps
{
    [Binding]
    public sealed class OpenLearnStepDefinitions
    {
        private readonly IHomePageObject _homePageObject;
        private readonly ISearchResultsPageObject _searchResultsPageObject;
        private readonly IBrowserDriver _browserDriver;
        private readonly INewPageObject _newPageObject;

        public OpenLearnStepDefinitions(IHomePageObject homePageObject, IBrowserDriver browserDriver, ISearchResultsPageObject searchResultsPageObject, INewPageObject newPageObject)
        {
            _homePageObject = homePageObject;
            _browserDriver = browserDriver;
            _searchResultsPageObject = searchResultsPageObject;
            _newPageObject = newPageObject;
        }

        #region AC1
        [Given(@"I go to Openlearn Home Page")]
        public void GivenIGoToOpenlearnHomePage()
        {
            _browserDriver.Current.Navigate().GoToUrl(_homePageObject.HomeUrl);
        }

        [Then(@"I can see all items as the attached picture")]
        public void ThenICanSeeAllItemsAsTheAttachedPicture()
        {
            bool result = _homePageObject.VisibleAllElement();
            Console.WriteLine($"result: {result}");
            result.Should().Be(true);
            Thread.Sleep(1000);
        }
        #endregion

        #region AC2
        [When(@"I clicked links or button and see new page")]
        public void WhenIClickedLinksOrButton()
        {
            _homePageObject.ClickMenuButton();
        }

        [When(@"I Clicked logo element")]
        public void WhenIClickedLogoElementAndChangeNewPage()
        {
            _homePageObject.ClickLogo();
        }

        [When(@"I clicked open learn")]
        public void WhenIClickedOpenLearn()
        {
            _homePageObject.ClickOpenLearn();
        }

        [Then(@"navigate to other page")]
        public void ThenNavigateToOtherPage()
        {
            var a = _browserDriver.Current.Url;
            a.Should().Be("https://www.open.ac.uk/");
        }

        [When(@"I clicked scroll button")]
        public void WhenIClickedScrollButton()
        {
            _homePageObject.ClickScroll();
           
        }

        [Then(@"Sticky menu showing")]
        public void ThenScrollToTheNextSectionAndTheStickyMenuIsShowing()
        {
            _homePageObject.NextSection(); 
        }



        //[Then(@"I see new page")]
        //public void ThenISeeNewPage()
        //{
        //    _newPageObject.Nextpage();
        //    Thread.Sleep(3000);
        //}

        #endregion

        #region AC3
        [Given(@"I enter (.*) into the search input")]
        public void GivenIEnterSomethingIntoTheSearchInput(string input)
        {
            _homePageObject.EnterIntoSearchFor(input);
        }

        [When(@"I click search button")]
        public void WhenIClickSearchButton()
        {
            _homePageObject.ClickButtonSearchFor();
        }

        [Then(@"I see the search results page")]
        public void ThenITheSeeSearchResultsPage()
        {
            string title = _searchResultsPageObject.GetTitle();
            Console.WriteLine(title);
            Console.WriteLine(_browserDriver.Current.Url);
            title.Should().Be("Search - OpenLearn - Open University");
        }

        [Given(@"I enter (.*) into the search input at the banner")]
        public void GivenIEnterSomthingIntoTheSearchInputAtTheBanner(string input)
        {
            _homePageObject.EnterIntoBannerSearch(input);
        }

        [When(@"I click  banner search button")]
        public void WhenIClickBannerSearchButton()
        {
            _homePageObject.ClickBannerButtonSearch();
        }

        #endregion

    }
}
