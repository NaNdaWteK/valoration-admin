Class('Services.Element', {

    Extends: Service,

    initialize: function() {
        Services.Element.Super.call(this, '../../add-components');
    },

    add: function(components) {
        this.doRequest(this.baseUrl, components, function(response) {
            Bus.publish('components.added', response);
        });
    },

    subscribe: function() {
        Bus.subscribe('service.add', this.add.bind(this));
    }

});
