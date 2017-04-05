Class('Page.Group', {

    Extends: Page,

    initialize: function() {
        instances = [Group.Form, Group.Group, Group.Submit, Services.Group];
        Page.Group.Super.call(this, instances);
    },

    publish: function() {},

    subscribe: function() {}

});
