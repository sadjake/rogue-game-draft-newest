class Enemy extends GameObject {

  Enemy () {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    HEALTHPOINTS = 100;
    rx = 1;
    ry = 1;
  }

  void show () {
    //if (rx == myHero.rx && ry == myHero.ry) {
      stroke (BLACK);
      strokeWeight(2);
      fill(RED);
      circle(location.x, location.y, 50);
      fill(BLACK);
      textSize(20);
      text(HEALTHPOINTS, location.x, location.y);
    //}
  }
}
