Class('Group.Form', {

    Extends: Component,

    initialize: function() {
        this.group = '';
        Group.Form.Super.call(this, 'group-form');
    },

    empty: function() {
        Bus.publish('group.empty');
    },

    change: function(group) {
        this.group = group;
    },

    add: function() {
        Bus.publish('group.add', this.group);
    },

    added: function(response){
        this.empty();
        console.log('Group added');
    },

    subscribe: function() {
        Bus.subscribe('group.change', this.change.bind(this));
        Bus.subscribe('group.submit', this.add.bind(this));
        Bus.subscribe('group.added', this.added.bind(this));
    }

});
