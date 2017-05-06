Class('Page.Component', {

    Extends: Page,

    initialize: function() {
        this._instaceComponents();
        this._instaceServices();
        this._instaceInfrastructure();
        Page.Component.Super.call(this);
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

    publish: function() {},

    subscribe: function() {}

});
