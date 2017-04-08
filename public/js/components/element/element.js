Class('Elements.Element', {

    Extends: Elements,

    initialize: function() {
        Elements.Element.Super.call(this, 'element');
    },

    subscribe: function() {
        Bus.subscribe('element.empty', this.empty.bind(this));
        Bus.subscribe('element.value', this.send.bind(this));
    }

});
