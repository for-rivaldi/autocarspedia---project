const changeTextBtn = document.getElementById('changeTextBtn');
const textElement = document.querySelector('h1');

changeTextBtn.addEventListener('click', function() {
    textElement.textContent = 'Hello, JavaScript!';
});
