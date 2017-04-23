Class('Group.Message', {

    Extends: Elements,

    initialize: function() {
        Group.Message.Super.call(this, 'message');
    },

    empty: function() {
        this.element.innerHTML = '';
    },

    make: function(response) {
        this.empty();
        var message = this._generateMessage(response);
        this.element.append(message);
    },

    _generateMessage: function(response) {
        var message = document.createElement('p');
        message.className = 'group-message--added';
        var text = 'El grupo ' + response.group + " ha sido añadido con éxito.";
        message.textContent = text;
        return message;
    },

    subscribe: function() {
        Bus.subscribe('components.empty', this.empty.bind(this));
        Bus.subscribe('components.message', this.make.bind(this));
    }

});
