Class('Page.Element', {

    Extends: Page,

    initialize: function() {
        this._instaceServices();
        this._instaceComponents();
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

    subscribe: function() {
        Bus.subscribe('goto.components', Page.Element.Super.prototype.goToComponents.bind(this));
    }

});
