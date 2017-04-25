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
    },

    _instaceServices: function() {},

    _instaceInfrastructure: function() {
        new Elements();
    },

    publish: function() {},

    subscribe: function() {}

});
