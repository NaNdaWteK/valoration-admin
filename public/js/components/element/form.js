Class('Elements.Form', {

    Extends: Component,
    Implements: SerializeForm,

    initialize: function() {
        this.element = '';
        Elements.Form.Super.call(this, 'element-form');
    },

    change: function(element) {
        this.element = element;
    },

    add: function() {
        var formData = this._generateFormData();
        Bus.publish('element.add', formData);
    },

    added: function(response){
        this._empty();
        this._show(response);
    },

    _show: function(response){
        Bus.publish('element.message',response);
    },

    _empty: function() {
        Bus.publish('element.empty', 'element.change');
    },

    _generateFormData: function()
    {
        var data = [];
        data.element = this.element;
        return this.generate(data);
    },

    subscribe: function() {
        Bus.subscribe('element.change', this.change.bind(this));
        Bus.subscribe('element.submit', this.add.bind(this));
        Bus.subscribe('element.added', this.added.bind(this));
    }

});
