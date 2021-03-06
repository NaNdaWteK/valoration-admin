Class('Service', {

    initialize: function(baseUrl) {
        this.baseUrl = baseUrl;
        this.subscribe();
    },

    doRequest: function(endpoint, data, callback) {
        var request = new XMLHttpRequest();
        var OK = 200;

        request.open('POST', endpoint);
        request.onreadystatechange = function() {
            if (request.readyState === XMLHttpRequest.DONE) {
                if (request.status === 200) {
                    callback (JSON.parse(request.responseText));
                }
            }
        };
        request.send(data);
    },

    subscribe: function() {
        console.error(this.toString() + ' not subscribed!, implement subscribe method' );
    }

});
