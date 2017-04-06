Class('Group.Form', {

    Extends: Component,

    initialize: function() {
        this.group = '';
        Group.Form.Super.call(this, 'group-form');
    },

    change: function(group) {
        this.group = group;
    },

    add: function() {
        var group = new Array(this.group);
        Bus.publish('group.add', group);
    },

    added: function(response){
        this._empty();
        this._show(response);
    },

    _show: function(response){
        Bus.publish('group.message',response);
    },

    _empty: function() {
        Bus.publish('group.empty');
    },

    subscribe: function() {
        Bus.subscribe('group.change', this.change.bind(this));
        Bus.subscribe('group.submit', this.add.bind(this));
        Bus.subscribe('group.added', this.added.bind(this));
    }

});
