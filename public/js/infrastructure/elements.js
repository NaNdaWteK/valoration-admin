Class('Elements', {

    Extends: Component,

    initialize: function(elementId) {
        Elements.Super.call(this, elementId);
    },

    empty: function(published) {
        this.element.value = '';
        Bus.publish(published, '');
    },

    send: function(published) {
        Bus.publish(published, this.element.value);
    }

});
