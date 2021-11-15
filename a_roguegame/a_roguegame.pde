//Jake Choi
//1-4

boolean upkey, leftkey, downkey, rightkey, spacekey;
ArrayList<GameObject> myObjects;
ArrayList<DarknessCell> darkness;
Hero myHero;
AnimatedGIF myGIF;

PImage map;
color northRoom, eastRoom, southRoom, westRoom;

int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int VICTORY = 4;
final int GAMEOVER = 5;

//colour scheme
color BLUE  = #2644FC;
color DARKBLUE = #011381;
color SKY = #5FF2F1;
color BLACK = #030303;
color WHITE = #FFFFFF;
color RED = #F50000;

void setup() {
  mode = INTRO;
  size(800, 800, P2D);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  imageMode(CENTER);
  // GIF
  myGIF = new AnimatedGIF (38, "frame_", "_delay-0.03s.png");
  //create objects
  myObjects = new ArrayList<GameObject>(1000);
  myHero = new Hero();
  myObjects.add(myHero);
  myObjects.add(new Enemy());
  map = loadImage("map1.png");

  darkness = new ArrayList<DarknessCell>(1000);
  float size = 20;
  int x = 0;
  int y = 0;
  while (y < height) {
    darkness.add(new DarknessCell(x, y, size));
    x += size;
    if (x >= width) {
      x = 0;
      y += size;
    }
  }
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == VICTORY) {
    gameover();
  } else if (mode == GAMEOVER) {
    win();
  } else {
    println("Error: Mode = " + mode);
  }
}
