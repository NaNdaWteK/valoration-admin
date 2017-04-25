Class('Component', {

    initialize: function(objectId) {
        this.component = document.getElementById(objectId);
        this.subscribe();
    },

    subscribe: function() {
        console.error(this.toString() + ' not subscribed!, implement subscribe method');
    }

});
