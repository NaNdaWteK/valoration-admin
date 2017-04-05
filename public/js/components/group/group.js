Class('Group.Group', {

    Extends: Component,

    initialize: function() {
        Group.Group.Super.call(this, 'group');
    },

    empty: function() {
        this.element.value = '';
        Bus.publish('group.change', '');
    },

    send: function() {
        Bus.publish('group.change', this.element.value);
    },

    subscribe: function() {
        Bus.subscribe('group.empty', this.empty.bind(this));
        Bus.subscribe('group.value', this.send.bind(this));
    }

});
