Feature: This feature file contains test cases to check GET Payload Responses for All Products.
  Background:
@Smoke
    Scenario:
      Given url getUrl
      When method GET
      Then status 200
  * print 'Got the Results' , response
  * match response.responseCode == 200

 @Regression
    Scenario:
     Given url getUrl
    When method GET
    Then status 200
   * print 'Got the Results' , response
   * match response.responseCode == 200

