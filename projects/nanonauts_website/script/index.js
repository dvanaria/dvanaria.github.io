function swapImage() {
    var i = document.getElementById("main-image");
    if(i.src.match("images/NINJA_RED.png")) {
        i.src = "images/FANCY_DRESS_WIZARD_NINJA.png";
    }
    else {
        i.src = "images/NINJA_RED.png";
    }
}