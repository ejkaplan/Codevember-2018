ArrayList<Circle> circles;
ArrayList<Circle> dead;
float maxSize;
float offset;

void setup() {
  size(500, 500);
  offset = 0;
  maxSize = dist(0, 0, width, height);
  circles = new ArrayList<Circle>();
  dead = new ArrayList<Circle>();
}

void draw() {
  background(0);
  if (frameCount % 8 == 0 || circles.size() == 0) {
    circles.add(new Circle(width/2, height/2, offset));
    offset += 0.5;
  }
  for (Circle c : circles) {
    c.update();
    if (c.size > maxSize) {
      dead.add(c);
    }
  }
  for (Circle c : dead) {
    circles.remove(c);
  }
  dead.clear();
}
