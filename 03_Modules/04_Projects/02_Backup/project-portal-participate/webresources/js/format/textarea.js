// Prevents the default line break of the textarea.
document.addEventListener('DOMContentLoaded', function () 
{
    const textarea = document.getElementById('dialog-input');

    textarea.addEventListener('keydown', function (event) {
        if (event.key === 'Enter')
            event.preventDefault();
    });
});