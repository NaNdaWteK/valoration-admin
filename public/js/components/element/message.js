Class('Elements.Message', {

    Extends: Elements,

    initialize: function() {
        Elements.Message.Super.call(this, 'message');
    },

    _generateMessage: function(response) {
        var message = document.createElement('p');
        message.className = 'element-message--added';
        var text = 'El elemento ' + response.element + " ha sido añadido con éxito.";
        message.textContent = text;
        return message;
    },

    subscribe: function() {
        Bus.subscribe('form.empty', Elements.Message.Super.prototype.empty.bind(this));
        Bus.subscribe('form.message', Elements.Message.Super.prototype.addMessage.bind(this));
    }

});
