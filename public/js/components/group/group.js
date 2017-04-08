Class('Group.Group', {

    Extends: Elements,

    initialize: function() {
        Group.Group.Super.call(this, 'group');
    },

    subscribe: function() {
        Bus.subscribe('group.empty', this.empty.bind(this));
        Bus.subscribe('group.value', this.send.bind(this));
    }

});
