Class('Services.Group', {

    Extends: Service,

    initialize: function() {
        Services.Group.Super.call(this, '../../create-group');
    },

    add: function(group) {
        this.doRequest(this.baseUrl + '/add', group, function(response) {
            Bus.publish('group.added', response);
        });
    },

    subscribe: function() {
        Bus.subscribe('service.add', this.add.bind(this));
    }

});
