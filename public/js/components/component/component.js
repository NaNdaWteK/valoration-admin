Class('Components.Form', {

    Extends: Forms,

    initialize: function() {
        Components.Form.Super.call(this);
        this.formData = {};
    },

    add: function() {
        this._addComponents();
        this._addElementId();
        Bus.publish('service.add', this._generateFormData());
    },

    added: function(response){
        this._empty();
        this._show(response);
    },

    _empty: function() {
        this.formData = {};
        var components = document.getElementsByName('component[]');
        components.forEach(function(component) {
            component.value = '';
        });
    },

    _addComponents: function() {
        var components = document.getElementsByName('component[]');
        var items = [];
        components.forEach(function(component) {
            items.push(component.value);
        }.bind(this));
        components = JSON.stringify(items);
        this.formData.components = components;
    },

    _addElementId: function() {
        var id = document.getElementById('relatedId');
        this.formData.element_id = id;
    },

    _generateFormData: function() {
        var data = new FormData();
        for (var key in this.formData) {
            if (this.formData.hasOwnProperty(key)) {
                if (key === 'components'){
                    data.append(key, this.formData[key]);
                }else{
                    data.append(key, this.formData[key].value);
                }
            }
        }
        return data;
    },

    subscribe: function() {
        Bus.subscribe('form.submit', this.add.bind(this));
        Bus.subscribe('form.added', this.added.bind(this));
    }

});
