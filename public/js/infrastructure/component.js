Class('Component', {

    initialize: function(elementId) {
        this.subscribe();
    },

    subscribe: function() {
        console.error(this.toString() + ' not subscribed!, implement subscribe method');
    }

});
