Class('Group.Message', {

    Extends: Elements,

    initialize: function() {
        Group.Message.Super.call(this, 'message');
    },

    _generateMessage: function(response) {
        var message = document.createElement('p');
        message.className = 'group-message--added';
        var text = 'El grupo ' + response.group + " ha sido añadido con éxito.";
        message.textContent = text;
        return message;
    },

    subscribe: function() {
        Bus.subscribe('form.empty', Group.Message.Super.prototype.empty.bind(this));
        Bus.subscribe('form.message', Group.Message.Super.prototype.addMessage.bind(this));
    }

});
