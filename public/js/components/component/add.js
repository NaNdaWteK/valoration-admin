Class('Components.Add', {

    Extends: Elements,

    initialize: function() {
        Components.Add.Super.call(this, 'add');
        this.element.addEventListener('click',this.addLine.bind(this));
    },

    addLine: function() {
        var container = document.getElementById('components');
        var line = document.createElement('div');
        var input = this.generateInput();
        line.append(input);
        container.append(line);
    },

    generateInput: function() {
        var input = document.createElement('input');
        input.setAttribute('type', 'text');
        input.setAttribute('maxlength', '255');
        input.setAttribute('name', 'component');
        input.setAttribute('placeholder', 'Component to track');
        return input;
    },

    subscribe: function() {
    }

});
