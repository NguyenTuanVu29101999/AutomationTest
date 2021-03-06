Feature: TestHomePage
	Test Openlearn home page



@AC2
#Scenario: Make sure all links/buttons are clickable
#	Given I go to Openlearn Home Page
#	Then I can see all items as the attached picture
#	When I clicked links or button and see new page 
	

Scenario: Click logo element
	Given I go to Openlearn Home Page
	Then I check all text and click all links or buttons
	#When I Clicked logo element and navigate to other page
	#When I clicked open learn
	#Then navigate to other page

Scenario: Click scroll button
	Given I go to Openlearn Home Page
	When I clicked scroll button
	Then Sticky menu showing


#Examples: 
#	| title                         |
#	| a[@class='hslogo logo-image'] |
#	| div[@class='main-logo']       |
#	|


#@AC3_1
#Scenario: Test search at the top of the web
#	Given I enter videos into the search input
#	When I click search button
#	Then I see the search results page
#
#@AC3_2
#Scenario: Test search at the banner of the web
#	Given I enter videos into the search input at the banner
#	When I click  banner search button
#	Then I see the search results page
