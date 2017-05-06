Class('Elements', {

    Extends:Component,

    initialize: function(elementId) {
        this.element = document.getElementById(elementId);
        Elements.Super.call(this);
    },

    empty: function() {
        this.element.innerHTML = '';
    },

    addMessage: function(response) {
        this.empty();
        var message = this._generateMessage(response);
        this.element.append(message);
    },

    subscribe: function() {}

});
