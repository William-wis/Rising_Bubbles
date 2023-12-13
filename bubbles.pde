ArrayList<Bubble> bubs = new ArrayList<>();
int nob = 10;



void setup() {
  size(400, 700);
  for (int i = 0; i < nob; i++) {
    bubs.add(new Bubble());
  }
}



void draw() {
  background(174, 198, 207);
  stroke(0);
  line(0, height*1/3, width, height*1/3);
  for (int i = 0; i< bubs.size(); i++) {
    bubs.get(i).show();
    bubs.get(i).moveX();
    bubs.get(i).moveY();
    bubs.get(i).checkCollisions(i);
  }
  fill(0);
  textSize(25);
  text("Total: " + bubs.size(), 50, 50);
}



void mousePressed() {
  for (int i = 0; i < nob; i++) {
    bubs.add(new Bubble());
  }
}
