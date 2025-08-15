function fn() {
    karate.configure('connectTimeout', 10000);
    karate.configure('readTimeout', 10000);

    return {
        api:{
            baseUrl: 'http://api.geonames.arg/'
        },
        user:{
            name:'david.castro'
        }
    };
}