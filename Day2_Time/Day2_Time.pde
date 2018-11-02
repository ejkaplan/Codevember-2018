ArrayList<Clock> clocks;

void setup() {
  size(500, 500);
  clocks = new ArrayList<Clock>();
  for (int x = 0; x < 8; x++) {
    for (int y = 0; y < 8; y++) {
      clocks.add(new Clock(map(x,-0.5,7.5,0,width), map(y,-0.5,7.5,0,height), width/8));
    }
  }
}

void draw() {
  background(0);
  for (Clock c : clocks) {
    c.update();
  }
}
