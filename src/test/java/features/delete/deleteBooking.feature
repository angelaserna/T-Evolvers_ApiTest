Feature:Restful Booker HerokuApp - Delete booking

  Background: consume service
    * url 'https://restful-booker.herokuapp.com/'
    * def authToken = call read('classpath:features/token/createToken.feature@CreateToken')
    * def create = call read('classpath:features/create/createBooking.feature@Create')

  Scenario: Delete booking restful booker herokuapp by Id

    Given path 'booking/'
    And path create.id
    * header Cookie = 'token=' + authToken.Token
    And print authToken.accessToken

    When method DELETE
    Then status 201

    And assert responseTime < 4000
    * def deleteResponse = response

    And print 'deleteResponse: ', response
