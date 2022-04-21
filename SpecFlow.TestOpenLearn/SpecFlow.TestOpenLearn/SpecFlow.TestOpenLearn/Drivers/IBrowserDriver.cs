using OpenQA.Selenium;

namespace SpecFlow.TestOpenLearn.Drivers
{
    public interface IBrowserDriver
    {
        IWebDriver Current { get; }

        void Dispose();
    }
}