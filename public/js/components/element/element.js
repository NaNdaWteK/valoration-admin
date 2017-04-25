Class('Elements.Form', {

    Extends: Forms,

    initialize: function() {
        Elements.Form.Super.call(this);
        this.formData.element = document.getElementById('element');
    },

    added: function(response){
        this._empty();
        Elements.Form.Super.prototype._show(response);
    },

    _empty: function() {
        this.formData.element.value = '';
        Bus.publish('components.empty');
    },

    subscribe: function() {
        Bus.subscribe('element.submit', Elements.Form.Super.prototype.add.bind(this));
        Bus.subscribe('element.added', this.added.bind(this));
    }

});
