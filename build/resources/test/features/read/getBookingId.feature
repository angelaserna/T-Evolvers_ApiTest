Feature:Restful Booker HerokuApp - Read booking by Id

  Background: consume service
    * url apiUrl
    * def authToken = call read('classpath:features/token/createToken.feature@CreateToken')
    * def create = call read('classpath:features/create/createBooking.feature@Create')

  @BookingId
  Scenario: Read booking detail restful booker herokuapp by Id
    Given path 'booking/'
    And path create.id
    * header Accept = 'application/json'
    * header Cookie = 'token=' + authToken.Token
    And print authToken.accessToken

    When method GET
    Then status 200

    And match response == read('classpath:features/read/expectedvalues.json')
    And match response == read('classpath:features/read/expectedformat.json')

    And assert responseTime < 4000
    * def responseBookingId = response

    And match response.[*].firstname == "#present", "#string", "#notnull"
    And match response.[*].lastname == "#present", "#string", "#notnull"
    And match response.[*].totalprice == "#present", "#number", "#notnull"
    And match response.[*].depositpaid == "#present", "#boolean", "#notnull"
    And match response.[*].[*].checkin == "#present", "#date", "#notnull"
    And match response.[*].[*].checkout == "#present", "#date", "#notnull"

    And print 'responseBookingId: ', response