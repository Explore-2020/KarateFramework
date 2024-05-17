Feature:

  Background:

  @Testcase001
    Scenario:
    * def finalpayload = call read('classpath:apilearning/generatepayload/POST_generate_payload.feature@Payload001')
    Given url postUrl
    And request finalpayload.parameterizedpayload
    When method POST
    Then status 201
