// code taken from https://github.com/page-object-js/page-object-js/blob/master/testProject/src/signup_form.html

function onSubmit() {
    var element         = document.getElementById('submit-count'),
        existingContent = element.innerHTML;
    element.innerHTML = parseInt(existingContent) + 1;
}
