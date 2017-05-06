Class('Services.Component', {

    Extends: Service,

    initialize: function() {
        Services.Component.Super.call(this, '../../add-components');
    },

    add: function(components) {
        this.doRequest(this.baseUrl + '/save', components, function(response) {
            Bus.publish('form.added', response);
        });
    },

    subscribe: function() {
        Bus.subscribe('service.add', this.add.bind(this));
    }

});
