Feature: Register new user
Background:
  Given the web page https://www.etsy.com is opened

  Scenario: 1
    Given 'Register' button is displayed
    When new user clicks on 'Register' button
    Then Modal window should open

  Scenario: 2
    Given modal window is opened
    And email textbox is displayed
    When new user write his email account
    Then email account is written

  Scenario: 3
    Given modal window is opened
    And name textbox is displayed
    When new user write his name
    Then name is written

  Scenario:4
    Given modal window is opened
    And password textbox is displayed
    When new user writes his password
    Then password is written

  Scenario: 5
    Given modal window is opened
    And 'Register' button is displayed
    When new user clicks on 'Register' button
    Then modal window is closed
    But modal window shouldn´t be opened

Feature: Validate user was registered

  Scenario: 1
    Given 'you' element is displayed
    When new user clicks on 'you' element
    Then 'you' element is opened
    Then 'you' element contains new user information

Feature: Search for 'Sketchbook'

  Scenario: 1
  Given 'Search' textbox is displayed
  When User writes in textbox 'Sketchbook'
  Then 'Sketchbook' is written

  Scenario:2
  Given 'Search' button is displayed
  When User clicks on 'Search' button
  Then Sketchbook´s results are displayed

Feature: Sort results by price ascending

  Scenario: 1
    Given 'Sort by' Element is displayed
    And 'Dropdown' element is displayed
    When User click on 'Dropdown' element
    Then Dropdown list is displayed
    Then 'Price ascending' element is displayed

  Scenario: 2
    Given 'Price ascending' element is displayed
    When User clicks on 'Price ascending' element
    Then Results are shown on the page

  Feature: Validate items are sorted
    Scenario: 1
      Given Results are shown on the page
      When Validate ID1 price is greater than ID2
      Then Results are sorted by price ascending

  Feature: Add most expensive item to cart
    Scenario: 1
      Given Results are shown on the page
      When User clicks on ID1 item
      Then New tab is opened with information of ID1 item

    Scenario: 2
      Given Item information is displayed
      And 'Add to car' button is displayed
      When User clicks on 'Add to cart' button
      Then Cart page is shown with ID1 item

  Feature: Search for 'turntable mat'
    Scenario: 1
      Given 'Search' textbox is displayed
      When User writes 'turntable mat' on textbox
      Then 'turntable mat' is displayed on textbox

    Scenario: 2
      Given 'turntable mat' is displayed on textbox
      And 'Search' button is shown
      When User clicks on 'Search' button
      Then Results for 'turntable mat'are shown

  Feature: Add any 'turntable mat' to the cart
    Scenario: 1
      Given Results for 'turntable mat'are shown
      When User clicks on Item 1
      Then New tab for Item 1 is displayed

    Scenario: 2
      Given Item information is displayed
      And 'Add to car' button is displayed
      When User clicks on 'Add to cart' button
      Then Cart page is shown with the item chosen

    Scenario: 3
      Given Item information is displayed
      And 'Add to car' button is displayed
      When User clicks on 'Add to cart' button
      Then Cart page is shown with the item chosen

  Feature: Validate cart content
      Scenario: 1
        Given Cart page is shown
        When Validates 'Sketchbook' and 'Turntable mat' items exist on the cart page
        Then 'Sketchbook' and 'Turntable mat' are shown on the cart page





