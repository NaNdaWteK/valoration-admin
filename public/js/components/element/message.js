Class('Elements.Message', {

    Extends: Elements,

    initialize: function() {
        Elements.Message.Super.call(this, 'message');
    },

    empty: function() {
        this.element.innerHTML = '';
    },

    make: function(response) {
        this.empty();
        var message = document.createElement('p');
        message.className = 'element-message--added';
        var text = 'El elemento ' + response.element + " ha sido añadido con éxito.";
        message.textContent = text;
        this.element.append(message);
    },

    subscribe: function() {
        Bus.subscribe('components.empty', this.empty.bind(this));
        Bus.subscribe('components.message', this.make.bind(this));
    }

});
