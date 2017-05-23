Class('Elements.Form', {

    Extends: Forms,

    STATIC: {
        TEXT_BUTTON: 'Añadir Componentes',
    },

    initialize: function() {
        Elements.Form.Super.call(this, 'element');
        this.elementsList = document.getElementById('list');
        this._prepareFormData();
        this._list();
    },

    add: function() {
        related_id = '';
        Bus.publish('elements.list', related_id);
        Bus.publish('service.add', this._generateFormData());
    },

    added: function(response){
        this._empty();
        this._prepareFormData();
        this._show(response);
    },

    showList: function(elements) {
        this.elementsList.innerHTML = '';
        elements.forEach(function(element){
            var button = this._createButton(element.id);
            var item = this._makeElement(element);
            item.append(button);
            this.elementsList.append(item);
        }.bind(this));
    },

    _createButton: function(id) {
        var button = document.createElement('button');
        button.textContent = Elements.Form.TEXT_BUTTON;
        button.onclick = function() {
            Bus.publish('goto.components', id);
        }.bind(id);
        return button;
    },

    _makeElement: function(element) {
        var item = document.createElement('li');
        item.textContent = element.element;
        return item;
    },

    _list: function() {
        related_id = '';
        Bus.publish('elements.list', related_id);
    },

    _prepareFormData: function() {
        this.formData.element = document.getElementById('element');
    },

    subscribe: function() {
        Bus.subscribe('form.submit', this.add.bind(this));
        Bus.subscribe('form.added', this.added.bind(this));
        Bus.subscribe('elements.list.retrieved', this.showList.bind(this));
    }

});
