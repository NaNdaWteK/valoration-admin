Class('Forms', {

    Extends: Component,

    initialize: function() {
        this.formData = {};
        Elements.Super.call(this);
    },

    add: function() {
        Bus.publish('service.add', this.generateFormData(this.formData));
    },

    _show: function(response) {
        Bus.publish('components.message',response);
    },

    subscribe: function() {}

});
