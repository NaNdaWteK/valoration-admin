Class('Services.Element', {

    Extends: Service,

    initialize: function() {
        Services.Element.Super.call(this, '../../add-element');
    },

    add: function(element) {
        this.doRequest(this.baseUrl + '/save', element, function(response) {
            Bus.publish('form.added', response);
        });
    },

    subscribe: function() {
        Bus.subscribe('service.add', this.add.bind(this));
    }

});
