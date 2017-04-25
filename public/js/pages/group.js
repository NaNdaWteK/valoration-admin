Class('Page.Group', {

    Extends: Page,

    initialize: function() {
        this._instaceComponents();
        this._instaceServices();
        this._instaceInfrastructure();
        Page.Group.Super.call(this);
    },

    _instaceComponents: function() {
        new Group.Form() ;
        new Group.Message() ;
        new Group.Submit();
    },

    _instaceServices: function() {
        new Services.Group();
    },

    _instaceInfrastructure: function() {
        new Forms();
        new Elements();
    },

    publish: function() {},

    subscribe: function() {}

});
