Class('Services.Element', {

    Extends: Service,

    initialize: function() {
        Services.Element.Super.call(this, '../../elements');
    },

    add: function(element) {
        this.doRequest(this.baseUrl + '/save', element, function(response) {
            Bus.publish('form.added', response);
        });
    },

    list: function(related_id) {
        this.doRequest(this.baseUrl + '/list', related_id, function(response) {
            Bus.publish('elements.list.retrieved', response);
        });
    },

    subscribe: function() {
        Bus.subscribe('service.add', this.add.bind(this));
        Bus.subscribe('elements.list', this.list.bind(this));
    }

});
