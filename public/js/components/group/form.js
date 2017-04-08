Class('Group.Form', {

    Extends: Component,
    Implements: SerializeForm,

    initialize: function() {
        this.group = '';
        Group.Form.Super.call(this, 'group-form');
    },

    change: function(group) {
        this.group = group;
    },

    add: function() {
        var formData = this._generateFormData();
        Bus.publish('group.add', formData);
    },

    added: function(response){
        this._empty();
        this._show(response);
    },

    _show: function(response){
        Bus.publish('group.message',response);
    },

    _empty: function() {
        Bus.publish('group.empty', 'group.change');
    },

    _generateFormData: function()
    {
        var data = [];
        data.group = this.group;
        return this.generate(data);
    },

    _generateFormData: function()
    {
        var data = [];
        data.group = this.group;
        return this.generate(data);
    },

    subscribe: function() {
        Bus.subscribe('group.change', this.change.bind(this));
        Bus.subscribe('group.submit', this.add.bind(this));
        Bus.subscribe('group.added', this.added.bind(this));
    }

});
