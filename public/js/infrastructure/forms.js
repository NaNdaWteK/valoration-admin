Class('Forms', {

    Extends: Component,

    initialize: function(objectId) {
        Forms.Super.call(this, objectId);
        this.formData = {};
    },

    add: function() {
        Bus.publish('service.add', this._generateFormData());
    },

    added: function(response){
        this._empty();
        this._show(response);
    },

    _show: function(response) {
        Bus.publish('form.message', response);
    },

    _generateFormData: function() {
        var data = new FormData();
        for (var key in this.formData) {
            if (this.formData.hasOwnProperty(key)) {
                data.append(key, this.formData[key].value);
            }
        }
        return data;
    },

    _empty: function() {
        this._emptyInput();
        this.formData = {};
        Bus.publish('form.empty');
    },

    _emptyInput: function() {
        for (var key in this.formData) {
            this.formData[key].value = '';
        }
    },

    subscribe: function() {}

});
