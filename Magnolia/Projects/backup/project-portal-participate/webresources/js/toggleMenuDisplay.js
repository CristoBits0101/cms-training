// Function to toggle the visibility of the menu.
function toggleMenu() {

    // Select the <ul> element inside <nav>.
    var ul = document.querySelector('nav ul');

    // If the display style is 'none' or empty, change it to 'flex'; otherwise, change it to 'none'.
    if (ul.style.display === 'none' || ul.style.display === '') {
        ul.style.display = 'flex';
    }

    else {
        ul.style.display = 'none';
    }
}

// Wait for the DOM content to be fully loaded
document.addEventListener('DOMContentLoaded', function () {

    // Add event listener to the element with class "menu-button"
    document.querySelector('.menu-button').addEventListener('click', toggleMenu);

});
