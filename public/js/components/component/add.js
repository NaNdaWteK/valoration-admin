Class('Components.Add', {

    Extends: Elements,

    initialize: function() {
        Components.Add.Super.call(this, 'add');
        this.container = document.getElementById('components');
        this._events();
    },

    _addLine: function() {
        var line = this._generateBlock();
        var input = this._generateInput();
        line.append(input);
        this.container.append(line);
    },

    _generateBlock: function() {
        return document.createElement('div');
    },

    _generateInput: function() {
        var input = document.createElement('input');
        input.setAttribute('type', 'text');
        input.setAttribute('maxlength', '255');
        input.setAttribute('name', 'component');
        input.setAttribute('placeholder', 'Component to track');
        return input;
    },
    
    _events: function() {
        this.element.addEventListener('click',this._addLine.bind(this));
    },

    subscribe: function() {
    }

});
