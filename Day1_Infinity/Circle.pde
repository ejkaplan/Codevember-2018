class Circle {
  
  PVector pos;
  float size;
  float offset;
  
  Circle(float x, float y, float offset) {
    pos = new PVector(x,y);
    this.offset = offset;
    size = 0;
  }
  
  void update() {
    noFill();
    strokeWeight(2);
    colorMode(HSB);
    stroke(5*offset % 255, 255, 255);
    float t = 0.05*frameCount;
    float x = pos.x + 20*cos(t+offset);
    float y = pos.y + 20*sin(t+offset);
    size += 1;
    ellipse(x,y, size, size);
  }
  
}
