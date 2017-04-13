Class('Page.Element', {

    Extends: Page,

    initialize: function() {
        instances = [Elements.Form, Elements.Message, Elements.Submit, Services.Element, Forms, Elements];
        Page.Element.Super.call(this, instances);
    },

    publish: function() {},

    subscribe: function() {}

});
