int screenSize = 500;

void setup() {
  size(500, 500);
}


void checkColor(int circleNum) {
  if (circleNum % 2 == 0) {
    fill(0, 50, 100);
  } else {
    fill(200, 181, 175);
  }
}


void draw() {

  float x = screenSize; //width
  float y = screenSize; //height
  float r = 250; //radius

  //draw big circle
  fill(180, 82, 84);
  ellipse(x/2, x/2, x, y);
  noStroke();

  drawSmallCircle(x/2, y/2, screenSize/2, 5);
}
/*
  x, y: center of the big circle
  r: radius of the big circle
  circleNum: Number of circle to be drawn
*/
void drawSmallCircle(float x, float y, float r, int circleNum) {
  if (circleNum == 0) {
    return;
  }

  float smallCirRad = Math.abs(mouseY - screenSize) * 0.7 * r / screenSize;
  checkColor(circleNum);

  //draw top circle
  ellipse(x + (r - smallCirRad) * cos(mouseX * PI / (screenSize/2) - PI/2),
  y + (r - smallCirRad) * sin(mouseX * PI/(screenSize / 2) - PI/2) , 2 * smallCirRad, 2 * smallCirRad);

  drawSmallCircle(x + (r - smallCirRad) * cos(mouseX * PI / (screenSize/2) - PI/2),
   y + (r - smallCirRad) * sin(mouseX * PI/(screenSize / 2) - PI/2), smallCirRad, circleNum - 1);


  //draw bottom left circle
  checkColor(circleNum);
  ellipse(x + (r - smallCirRad) * cos(mouseX * PI / (screenSize/2) + 150 * PI/ 180),
  y + (r - smallCirRad) * sin(mouseX * PI/(screenSize / 2) + 150 * PI/ 180) , 2 * smallCirRad, 2 * smallCirRad);

  drawSmallCircle(x + (r - smallCirRad) * cos(mouseX * PI / (screenSize/2) + 150 * PI/ 180),
  y + (r - smallCirRad) * sin(mouseX * PI/(screenSize / 2) + 150 * PI/ 180), smallCirRad, circleNum - 1);


  //draw bottom right circle
  checkColor(circleNum);
  ellipse(x + (r - smallCirRad) * cos(mouseX * PI / (screenSize/2) + 30 * PI/ 180),
  y + (r - smallCirRad) * sin(mouseX * PI/(screenSize / 2) + 30 * PI/ 180) , 2 * smallCirRad, 2 * smallCirRad);

  drawSmallCircle(x + (r - smallCirRad) * cos(mouseX * PI / (screenSize/2) + 30 * PI/ 180),
  y + (r - smallCirRad) * sin(mouseX * PI/(screenSize / 2) + 30 * PI/ 180), smallCirRad, circleNum - 1);

}