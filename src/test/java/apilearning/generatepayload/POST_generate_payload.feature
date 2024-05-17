Feature:
  Background:
    * def objutil = Java.type("apilearning.utilities.java").getSaltString()

    * def postpayload = read('classpath:apilearning/payload/POST_All_products_payload.json')
    * def posttestdata = read('classpath:apilearning/testdata/All_Products_Testdata.json')

    #* def randomemail = objutil
    * print objutil

  @Payload001
  Scenario:
    * set postpayload.clientName = posttestdata.productsName[1].clientName
    * set postpayload.clientEmail = objutil+"@gmail.com"
    * def parameterizedpayload = postpayload
