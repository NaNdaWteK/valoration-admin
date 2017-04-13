Class('Serializable', {

    generateFormData: function(data) {
        var formData = new FormData();
        for (var key in data) {
            if (data.hasOwnProperty(key)) {
                formData.append(key, data[key].value);
            }
        }
        return formData;
    }

});
