function toggleVisibility() {
    let div = document.getElementById('eas_container');
    div.style.display = (div.style.display === 'none') ? 'block' : 'none';
}

document.addEventListener('keyup', (event) => {
    console.log('hello! :3');
    if (event.key === "Enter") {
        toggleVisibility();
        console.log('hello!');
    }
});