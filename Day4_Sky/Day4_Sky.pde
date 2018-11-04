void setup() {
  size(500, 500);
}

float cutoff = 0.7;
void draw() {
  PImage clouds = createImage(width, height, RGB);
  clouds.loadPixels();
  float t = millis() * 0.0001;
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int i = y*width+x;
      float val = noise(x*0.005+t, y*0.01, t*0.5)+0.3;
      if (val < cutoff) val = 0;
      clouds.pixels[i] = color(map(val, cutoff, 1, 0, 256));
    }
  }
  clouds.updatePixels();
  background(#1F8DFF);
  blend(clouds, 0, 0, width, height, 0, 0, width, height, SCREEN);
}
