Class('Elements', {

    Extends:Component,

    initialize: function(elementId) {
        this.element = document.getElementById(elementId);
        Elements.Super.call(this);
    },
    subscribe: function() {}

});
