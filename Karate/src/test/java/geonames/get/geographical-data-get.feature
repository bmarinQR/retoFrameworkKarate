 Feature:Extract data from countries
   Background:
     * url api.baseUrl
     * path geoPath = "/timezoneJSON"
     * params {username: "#(user.name)", formatted: true, lat: #(latitude), lng: #(longitude) }
     * def responseFailedParameter = read("failed-response-get.json")
     * def responseColombiaParameter = read("successful-response-colombia-get.json")
     * def responseSuccessfulParameter = read("successful-response-get.json")

     Scenario Outline: Get geographical data of any country in the world
       When method get
       Then status 200
       And match $ == responseSuccessfulParameter

       Examples:
         | latitude | longitude |
         |   40     |  127      |
         |  40.712  |  -74      |


