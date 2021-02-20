PImage dvd;
float x, y, dx, dy;
int sat = 75, lightness = 85;

void setup () {
  fullScreen(P2D);
  orientation(LANDSCAPE); 
  colorMode(HSB, 360, 100, 100, 1);
  noStroke();

  dvd = loadImage("dude.png");

  x = random(width - dvd.width);
  y = random(height - dvd.height);
  dx = dy = 3;
  
  newtint();
}

void newtint() {
  tint(random(360), sat, lightness);  
}

void draw () {
  background(0, 0, 0, 1);
  if (x + dvd.width + dx > width || x + dx < 0) {
    dx *= -1;
    newtint();
  }
  if (y + dvd.height + dy > height || y + dy < 0) {
    dy *= -1; 
    newtint();
  }
  x += dx;
  y += dy;

  image(dvd, x, y);
}
