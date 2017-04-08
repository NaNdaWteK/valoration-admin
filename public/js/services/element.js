Class('Services.Element', {

    Extends: Service,

    initialize: function() {
        Services.Element.Super.call(this, '../../create-element');
    },

    add: function(element) {
        this.doRequest(this.baseUrl + '/add', element, function(response) {
            Bus.publish('element.added', response);
        });
    },

    subscribe: function() {
        Bus.subscribe('element.add', this.add.bind(this));
    }

});
