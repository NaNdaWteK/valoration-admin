Class('Page.Component', {

    Extends: Page,

    initialize: function() {
        instances = [Components.Add, Elements];
        Page.Component.Super.call(this, instances);
    },

    publish: function() {},

    subscribe: function() {}

});
