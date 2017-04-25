Class('Forms', {

    Extends: Component,

    initialize: function() {
        this.formData = {};
        Elements.Super.call(this);
    },

    add: function() {
        Bus.publish('service.add', this._generateFormData(this.formData));
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

    subscribe: function() {}

});
