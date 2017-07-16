
function currentYPos() {
    if (self.pageYOffset) {
    	return self.pageYOffset;
    }
    return 0;
}


function sectionPosition(eID) {
    var el = document.getElementById(eID);
    var pos = el.offsetTop;
    var node = el;
    while(node.offsetParent && node.offsetParent != document.body) {
        node = node.offsetParent;
        pos += node.offsetTop;
    } 
    return pos;
}


function smoothScroll(eID) {
    var startY = currentYPos();
    var endY = sectionPosition(eID);
    var distance = endY - startY;
    var speed = 20;
    var step = distance/250;
    var jumpY = startY + step;
    var timer = 0;
    if(endY > startY) {
        for(var i=startY; i<endY; i+=step) {
            setTimeout("window.scrollTo(0, "+jumpY+")", timer * speed);
            jumpY += step; 
            if(jumpY > endY) {
            	jumpY = endY;
           	}
           	timer++;
        } 
    }
}
