Class('Components.Message', {

    Extends: Elements,

    initialize: function() {
        Components.Message.Super.call(this, 'message');
    },

    _generateMessage: function(response) {
        var components = this._componentsAdded(response);
        var message = document.createElement('p');
        message.className = 'component-message--added';
        var text = 'Los componentes ' + components + ' han sido añadidos con éxito.';
        message.textContent = text;
        return message;
    },

    _componentsAdded: function(response) {
        var components = '';
        response.forEach(function(component){
            components += component.component + ', ';
        });
        return components.substring(0, components.length-2);
    },

    subscribe: function() {
        Bus.subscribe('form.empty', Components.Message.Super.prototype.empty.bind(this));
        Bus.subscribe('form.message', Components.Message.Super.prototype.addMessage.bind(this));
    }

});
