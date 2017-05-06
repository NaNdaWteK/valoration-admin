Class('Group.Submit', {

    Extends: Elements,

    initialize: function() {
        Group.Submit.Super.call(this, 'submit');
        this._events();
    },

    _submit: function() {
        Bus.publish('form.submit');
    },

    _events: function() {
        this.element.addEventListener('click',this._submit.bind(this));
    },

    subscribe: function() {}

});
