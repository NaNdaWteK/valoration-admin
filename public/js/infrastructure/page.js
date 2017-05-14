Class('Page', {

    STATIC: {
        ADD_COMPONENTS: '/add-components/',
    },

    initialize: function(components) {
        this.publish();
        this.subscribe();
    },

    goToComponents: function(id) {
        window.location = Page.ADD_COMPONENTS + id;
    },

    publish: function() {
        console.error(this.toString() + ' not publishing!, implement publish method');
    },

    subscribe: function() {
        console.error(this.toString() + ' not subscribed!, implement subscribe method');
    }

});
