Class('Group.Form', {

    Extends: Forms,

    initialize: function() {
        Group.Form.Super.call(this, 'group');
        this.formData.group = document.getElementById('group');
    },

    subscribe: function() {
        Bus.subscribe('form.submit', Group.Form.Super.prototype.add.bind(this));
        Bus.subscribe('form.added', Group.Form.Super.prototype.added.bind(this));
    }

});
