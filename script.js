window.addEventListener('message', function(event) {
    if (event.data.type == 'play') {
        var audio = new Audio('construction.ogg');
        audio.play();
    }
});