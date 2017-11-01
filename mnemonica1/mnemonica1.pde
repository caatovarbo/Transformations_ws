boolean rotate = false;
boolean translate = false;
boolean zoom = false;

void keyPressed() {
  if (key == 'r')
    rotate = !rotate;
  if (key == 't')
    translate = !translate;
  if (key == 'z')
    zoom = !zoom;
}

void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  pushStyle();
  
  if (rotate)
    rotateSquare();
  /**if (translate)
    translateSquare();
  if (zoom)
    zoomSquare();
    **/
  popStyle();
}

float angle = 0;
float speed;
void rotateSquare() {

    pushStyle();
    speed = 0.01;
    angle += speed;

    strokeWeight(0);
    stroke(0);
    fill(0, 0, 255);

    translate(width/2, height/2);
    rotate(angle);
    rectMode(CENTER);
    rect(0, 0, 500, 500);
    popStyle();
}