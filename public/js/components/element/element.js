Class('Elements.Form', {

    Extends: Forms,

    initialize: function() {
        Elements.Form.Super.call(this, 'element');
        this.formData.component = document.getElementById('element');
    },

    subscribe: function() {
        Bus.subscribe('components.form.submit', Elements.Form.Super.prototype.add.bind(this));
        Bus.subscribe('components.form.added', Elements.Form.Super.prototype.added.bind(this));
    }

});
