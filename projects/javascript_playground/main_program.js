// Game Setup
print_to_textgrid(2, 2, "Use left and right arrow keys to move.");
print_to_textgrid(32, 29, "This will be a line printed in the textgrid.");
print_to_textgrid(12, 8, "Use spacebar to jump (and play sound).", 32);
print_to_textgrid(17, 13, "This will be a line printed in the textgrid.", 48);
set_text_background_color(5,15,55);
set_text_background_color(15,18,75);
set_text_background_color(25,25,105);

user_input = { 
    left: false, 
    right: false, 
    jump: false 
};

player = {
    x: 50,
    y: 50,
    color: 87
};

document.addEventListener('keydown',    onkeydown,    false);
document.addEventListener('keyup',      onkeyup,      false);
//canvas.addEventListener('click',      onclick,      false);
//canvas.addEventListener('mousemove',  onmousemove,  false);
//canvas.addEventListener('touchstart', ontouchstart, false);
//canvas.addEventListener('touchmove',  ontouchmove,  false);

function onkeydown(event) {
    console.log('event: onkeydown');
    switch(event.keyCode) {
        case KEY.LEFT:
            user_input.left = true;
            break;
        case KEY.RIGHT:
            user_input.right = true;
            break;
        case KEY.SPACE:
            user_input.jump = true;
            break;
    }
}

function onkeyup(event) {
    console.log('event: onkeyup');
    switch(event.keyCode) {
        case KEY.LEFT:
            user_input.left = false;
            break;
        case KEY.RIGHT:
            user_input.right = false;
            break;
        case KEY.SPACE:
            user_input.jump = false;
            break;
    }
}
        

var audio = new Howl({
    src: ['audio_file.mp3']
});


// Game Loop definition 
let secondsPassed;
let oldTimeStamp;
let fps;
function gameLoop(timeStamp) {

    // Calculate the number of seconds passed since the last frame
    secondsPassed = (timeStamp - oldTimeStamp) / 1000;
    secondsPassed = Math.min(secondsPassed, 0.1);  // to avoid big gaps
    oldTimeStamp = timeStamp;

    // Calculate fps
    fps = Math.round(1 / secondsPassed);

    // Update game state
    if(user_input.left === true) {
        player.x-=5;
    } 
    if(user_input.right === true) {
        player.x+=5;
    } 
    if(user_input.jump === true) {
        audio.pause();
        player.color = Math.floor(Math.random() * 141);
        audio.play();
    }
    
    // Clear screen
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    
    // Draw new screen
    draw_textgrid();
    ctx.fillStyle = playground_color_name[player.color];
    ctx.fillRect(player.x, player.y, 8, 8);

    // Establish next loop call
    window.requestAnimationFrame(gameLoop);
}



// Run
window.requestAnimationFrame(gameLoop);