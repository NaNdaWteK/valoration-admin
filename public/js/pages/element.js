Class('Page.Element', {

    Extends: Page,

    initialize: function() {
        this._instaceComponents();
        this._instaceServices();
        this._instaceInfrastructure();
        Page.Element.Super.call(this);
    },

    _instaceComponents: function() {
        new Elements.Form() ;
        new Elements.Message() ;
        new Elements.Submit();
    },

    _instaceServices: function() {
        new Services.Element();
    },

    _instaceInfrastructure: function() {
        new Forms();
        new Elements();
    },

    publish: function() {},

    subscribe: function() {}

});
