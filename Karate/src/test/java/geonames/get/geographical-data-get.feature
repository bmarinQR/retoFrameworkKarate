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

   Scenario Outline: Get geographical data of Colombia
     When method get
     Then status 200
     And match $ == responseColombiaParameter

     Examples:
       | latitude | longitude |
       |   4      |  -72      |

   Scenario Outline: Get failures of a country's geographic data
     When method get
     Then status 200
     And match $ ==responseFailedParameter

     Examples:
       | latitude | longitude |
       |   n      |     tt    |
       |          |           |
       |   *      |     -     |

   Scenario Outline: Get geographic data from a location where the API does not have information.
     When method get
     Then status 200
     And match $ == {"status":{"message":"no timezone information found for lat/lng","value":15}}

     Examples:
       | latitude | longitude |
       |   90     |  99       |




