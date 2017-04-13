Class('Group.Form', {

    Extends: Forms,

    Implements: Serializable,

    initialize: function() {
        Group.Form.Super.call(this);
        this.formData.group = document.getElementById('group');
    },

    added: function(response){
        this._empty();
        Group.Form.Super.prototype._show(response);
    },

    _empty: function() {
        this.formData.group.value = '';
        Bus.publish('components.empty');
    },

    subscribe: function() {
        Bus.subscribe('form.submit', Group.Form.Super.prototype.add.bind(this));
        Bus.subscribe('group.added', this.added.bind(this));
    }

});
