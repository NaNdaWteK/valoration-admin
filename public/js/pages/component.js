Class('Page.Component', {

    Extends: Page,

    initialize: function() {
        this._instaceComponents();
        this._instaceServices();
        this._instaceInfrastructure();
        Page.Component.Super.call(this);
        this.retrieveId();
    },

    _instaceComponents: function() {
        new Components.Add();
        new Components.Form() ;
        new Components.Message() ;
        new Components.Submit();
    },

    _instaceServices: function() {
        new Services.Component();
    },

    _instaceInfrastructure: function() {
        new Forms();
        new Elements();
    },

    retrieveId: function() {
        var url = window.location.href;
        id = url.split('add-components/')[1];
        Bus.publish('form.components.element_id', id);
    },

    publish: function() {},

    subscribe: function() {}

});
