

Feature: Check information about a movie

    Search for a movie title and get some information

Scenario: Health check
    Given i search by title in a GET request:
        |title           |Avangers Endgame|
    Then i should now if the response was 200