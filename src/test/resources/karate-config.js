function fn(){

    var env = karate.env;
    karate.log('karate env', env);
    karate.log('karate env', env);
    karate.configure('ssl', true);
    karate.configure('readTimeout', 5000);
    karate.configure('logPrettyRequest', true);
    karate.configure('logPrettyResponse', true);

    var config = {
        env: env
    }

    if(env == 'dev'){
        config.getUrl = 'https://automationexercise.com/api/productsList'
//        config.postUrl = 'https://simple-books-api.glitch.me/api-clients/'
    }
    else if(env == 'qa'){
         config.getUrl = 'https://automationexercise.com/api/productsList'
//         config.postUrl = 'https://simple-books-api.glitch.me/api-clients/'
    }
    else if(env == 'uat'){
         config.getUrl = 'https://automationexercise.com/api/productsList'
//         config.postUrl = 'https://simple-books-api.glitch.me/api-clients/'
    }
    return config;
}
