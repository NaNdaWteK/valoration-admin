Class('Services.Group', {

    Extends: Service,

    initialize: function() {
        Services.Group.Super.call(this, '../../add-group');
    },

    add: function(group) {
        this.doRequest(this.baseUrl + '/save', group, function(response) {
            Bus.publish('components.form.added', response);
        });
    },

    subscribe: function() {
        Bus.subscribe('service.add', this.add.bind(this));
    }

});
