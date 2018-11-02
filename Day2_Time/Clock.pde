class Clock {

  float t;  //The current time in range [0,12)
  float dt; //How fast the time is changing in hours/frame
  PVector pos;
  float size;

  Clock(float x, float y, float size) {
    pos = new PVector(x,y);
    this.size = size;
    t = random(0,12);
    dt = random(0.001, 0.01) * (random(1) < 0.5 ? -1 : 1);
  }

  void update() {
    stroke(255);
    strokeWeight(3);
    t += dt;
    if (t > 12) t -= 12;
    else if (t < 0) t += 12;
    float hourAngle = map(t, 0, 12, 0, TWO_PI);
    float minuteAngle = map(t - floor(t), 0, 1, 0, TWO_PI);
    //ellipse(pos.x, pos.y, size, size);
    PVector hourVec = PVector.fromAngle(hourAngle);
    hourVec.setMag(0.35 * size);
    hourVec.add(pos);
    line(pos.x, pos.y, hourVec.x, hourVec.y);
    PVector minuteVec = PVector.fromAngle(minuteAngle);
    minuteVec.setMag(0.5 * size);
    minuteVec.add(pos);
    line(pos.x, pos.y, minuteVec.x, minuteVec.y);
  }
}
