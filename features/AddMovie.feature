Feature: User can add manually a movie

Scenario: Add a movie
  Given I am on the RottenPotatoes home page
  When I follow "Add a new movie"
  Then I should be on the Create New Movie Page
  When I fill in "Title" with "Men In Black"
  And I select "PG-13" from "Rating"
  And I press "Save Changes"
  Then I should be on the RottenPotatoes home page
  And I should see "Men In Black"
