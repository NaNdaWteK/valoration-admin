Class('Elements.Form', {

    Extends: Forms,

    initialize: function() {
        Elements.Form.Super.call(this, 'element');
        this.formData.element = document.getElementById('element');
        this.elementsList = document.getElementById('list');
        this._list();
    },

    add: function() {
        related_id = '';
        Bus.publish('elements.list', related_id);
        Bus.publish('service.add', this._generateFormData());
    },

    showList: function(elements) {
        this.elementsList.innerHTML = '';
        elements.forEach(function(element){
            var item = this._makeElement(element);
            this.elementsList.append(item);
        }.bind(this));
    },

    _makeElement: function(element) {
        var item = document.createElement('li');
        item.setAttribute('element_id', element.id);
        item.textContent = element.element;
        return item;
    },

    _list: function() {
        related_id = '';
        Bus.publish('elements.list', related_id);
    },

    subscribe: function() {
        Bus.subscribe('form.submit', this.add.bind(this));
        Bus.subscribe('form.added', Elements.Form.Super.prototype.added.bind(this));
        Bus.subscribe('elements.list.retrieved', this.showList.bind(this));
    }

});
