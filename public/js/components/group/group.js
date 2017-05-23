Class('Group.Form', {

    Extends: Forms,

    initialize: function() {
        Group.Form.Super.call(this, 'group');
        this._prepareFormData();

    },

    added: function(response){
        this._empty();
        this._prepareFormData();
        this._show(response);
    },

    add: function() {
        Bus.publish('service.add', this._generateFormData());
    },

    _prepareFormData: function() {
        this.formData.group = document.getElementById('group');
    },

    subscribe: function() {
        Bus.subscribe('form.submit', this.add.bind(this));
        Bus.subscribe('form.added', this.added.bind(this));
    }

});
