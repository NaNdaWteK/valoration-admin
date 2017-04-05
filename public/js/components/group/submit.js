Class('Group.Submit', {

    Extends: Component,

    initialize: function() {
        Group.Submit.Super.call(this, 'submit');
        this.element.addEventListener('click', this.submit.bind(this));
    },

    submit: function() {
        Bus.publish('group.value');
        Bus.publish('group.submit');
    },

    subscribe: function() {}

});
