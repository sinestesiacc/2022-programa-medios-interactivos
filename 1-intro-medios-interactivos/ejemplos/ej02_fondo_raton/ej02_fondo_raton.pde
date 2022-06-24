void setup() {
  size(400, 400);
}

void draw() {
  float posX = float(mouseX)/width;
  float posY = float(mouseY)/height;
  background(posX * 255, posY * 255, 255);
}
