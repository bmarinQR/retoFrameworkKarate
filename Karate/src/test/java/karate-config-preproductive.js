function fn() {
    karate.configure('connectTimeout', 10000);
    karate.configure('readTimeout', 10000);
    var baseUrl = karate.properties['baseUrl'] || 'http://api.geonames.org/'
    var user = karate.properties['user'] || 'david.castro'

    return {
        api:{
            baserUrl: baseUrl
        }
        user:{
            name: user
        }
    }
}