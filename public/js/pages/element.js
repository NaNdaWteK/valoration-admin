Class('Page.Element', {

    Extends: Page,

    initialize: function() {
        instances = [Elements.Form, Elements.Message, Elements.Element, Elements.Submit, Services.Element];
        Page.Element.Super.call(this, instances);
    },

    publish: function() {},

    subscribe: function() {}

});
