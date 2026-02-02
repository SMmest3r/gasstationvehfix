var audio = new Audio('construction.ogg');

window.addEventListener('message', function(event) {
    if (event.data.type == 'play') {
        audio.currentTime = 0;
        audio.play();
    }
});