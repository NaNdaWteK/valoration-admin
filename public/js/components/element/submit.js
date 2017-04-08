Class('Elements.Submit', {

    Extends: Component,

    initialize: function() {
        Elements.Submit.Super.call(this, 'submit');
        this.element.addEventListener('click', this.submit.bind(this));
    },

    submit: function() {
        Bus.publish('element.value', 'element.change');
        Bus.publish('element.submit');
    },

    subscribe: function() {}

});
