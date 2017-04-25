Class('Group.Form', {

    Extends: Forms,

    initialize: function() {
        Group.Form.Super.call(this, 'group');
        this.formData.component = document.getElementById('group');
    },

    subscribe: function() {
        Bus.subscribe('components.form.submit', Group.Form.Super.prototype.add.bind(this));
        Bus.subscribe('components.form.added', Group.Form.Super.prototype.added.bind(this));
    }

});
