// Day 3: Carrot

void setup() {
  size(500, 500);
}

void draw() {
  pushMatrix();
  translate(random(width),random(height));
  rotate(random(TWO_PI));
  carrot(0,0);
  popMatrix();
}

void carrot(float x, float y) {
  carrot(x, y, int(Integer.MAX_VALUE * random(0, 1)));
}

void carrot(float x, float y, int seed) {
  randomSeed(seed);
  float w = random(10, 30);
  float h = random(70, 100);
  colorMode(HSB);
  color c = color(random(13, 15), random(200, 255), random(200, 255));
  randomSeed(seed);
  // Draw the leaf first
  carrotLeaf(x, y+0.2*h, 0.5*h, 0.8, 0.2, 0.05, 3);
  // Then the body
  fill(c);
  stroke(0);
  beginShape();
  curveVertex(x, y);
  curveVertex(x, y);
  curveVertex(x-w, y+0.1*h);
  curveVertex(x, y+h);
  curveVertex(x+w, y+0.1*h);
  curveVertex(x, y);
  curveVertex(x, y);
  endShape();
}

void carrotLeaf(float x, float y, float h, float shrink, float angle, float angleDeviation, int depth) {
  color c = color(80+random(-1, 1), 255, random(80, 120));
  stroke(c);
  if (depth <= 0) return;
  pushMatrix();
  translate(x, y);
  line(0, 0, 0, -h);
  for (int i = 0; i < 5; i++) {
    float newY = map(i, 0, 5, 0, h);
    pushMatrix();
    translate(0, -newY);
    pushMatrix();
    rotate(-(angle+random(-angleDeviation, angleDeviation)));
    carrotLeaf(0, 0, shrink*h, shrink, angle, angleDeviation, depth-1);
    popMatrix();
    pushMatrix();
    rotate(angle+random(-angleDeviation, angleDeviation));
    carrotLeaf(0, 0, shrink*h, shrink, angle, angleDeviation, depth-1);
    popMatrix();
    popMatrix();
  }
  popMatrix();
}
