Feature: Encode string

  Scenario: encode string from input
    Given I have an encoder
    When I enter "Code in ruby, live longer!"
    Then I should see "GLNCQ MJAFF FVOMB JIYCB"
