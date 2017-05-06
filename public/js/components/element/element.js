Class('Elements.Form', {

    Extends: Forms,

    initialize: function() {
        Elements.Form.Super.call(this, 'element');
        this.formData.element = document.getElementById('element');
    },

    subscribe: function() {
        Bus.subscribe('form.submit', Elements.Form.Super.prototype.add.bind(this));
        Bus.subscribe('form.added', Elements.Form.Super.prototype.added.bind(this));
    }

});
