Class('Components.Form', {

    Extends: Forms,

    initialize: function() {
        Components.Form.Super.call(this);
        this.formData.element = document.getElementById('element');
    },

    add: function() {

    },

    added: function(response){
        this._empty();
        Components.Form.Super.prototype._show(response);
    },

    _empty: function() {
        this.formData.components.value = '';
        Bus.publish('components.empty');
    },

    subscribe: function() {
        Bus.subscribe('component.submit', this.add.bind(this));
        Bus.subscribe('element.added', this.added.bind(this));
    }

});
