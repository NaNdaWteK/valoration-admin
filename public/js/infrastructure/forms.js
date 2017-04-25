Class('Forms', {

    Extends: Component,

    initialize: function(objectId) {
        Forms.Super.call(this, objectId);
        this.formData = {};
    },

    add: function() {
        Bus.publish('service.add', this._generateFormData(this.formData));
    },

    added: function(response){
        this._empty();
        this._show(response);
    },

    _show: function(response) {
        Bus.publish('components.message',response);
    },

    _generateFormData: function(data) {
        var formData = new FormData();
        for (var key in data) {
            if (data.hasOwnProperty(key)) {
                formData.append(key, data[key].value);
            }
        }
        return formData;
    },

    _empty: function() {
        this.formData.component.value = '';
        Bus.publish('components.empty');
    },

    subscribe: function() {}

});
