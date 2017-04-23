Class('Components.Message', {

    Extends: Elements,

    initialize: function() {
        Elements.Message.Super.call(this, 'message');
    },

    empty: function() {
        this.element.innerHTML = '';
    },

    make: function(response) {
        this.empty();
        var message = this._createMessage(response);
        this.element.append(message);
    },

    _createMessage: function(response) {
        var message = document.createElement('p');
        message.className = 'component-message--added';
        var text = 'Los componentes han sido añadidos con éxito.';
        message.textContent = text;
        return message;
    },

    subscribe: function() {
        Bus.subscribe('components.empty', this.empty.bind(this));
        Bus.subscribe('components.message', this.make.bind(this));
    }

});
