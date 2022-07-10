void setup() {
  size(500, 500);
  background(255);
  noStroke();
}

void draw() {

  if (mousePressed) {
    fill(255, 0, 0, 255/10);
    ellipse(mouseX, mouseY, 50, 50);
  }
}
