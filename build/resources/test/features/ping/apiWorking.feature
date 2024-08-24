Feature:Restful Booker HerokuApp - Ping validate

  Background: consume service
    * url 'https://restful-booker.herokuapp.com/'

  Scenario: Validate that the api is working

    Given path 'ping'

    When method GET
    Then status 201

    And assert responseTime < 4000
    * def deleteResponse = response

    And print 'deleteResponse: ', response
