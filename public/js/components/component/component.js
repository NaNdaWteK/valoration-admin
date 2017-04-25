Class('Component.Form', {

    Extends: Component,

    initialize: function() {
        Component.Form.Super.call(this);
        this.formData.element = document.getElementById('element');
    },

    add: function() {

    },

    added: function(response){
        this._empty();
        this._show(response);
    },

    _show: function(response) {

    },

    _empty: function() {
        this.formData.components.value = '';
        Bus.publish('components.empty');
    },

    subscribe: function() {
        Bus.subscribe('component.submit', this.add.bind(this));
        Bus.subscribe('component.added', this.added.bind(this));
    }

});
