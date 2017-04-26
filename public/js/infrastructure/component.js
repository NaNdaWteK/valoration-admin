Class('Component', {

    initialize: function(objectId) {
        this.component = document.getElementById(objectId);
        this.subscribe();
    },

    parseJwt: function(token, callback) {
        var base64Url = token.split('.')[1];
        var base64 = base64Url.replace('-', '+').replace('_', '/');
        callback(JSON.parse(window.atob(base64)));
    },

    subscribe: function() {
        Bus.subscribe('component.jwt.token', this.parseJwt.bind(this));
        console.error(this.toString() + ' not subscribed!, implement subscribe method');
    }

});
