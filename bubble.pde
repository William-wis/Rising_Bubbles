class Bubble {
  float r, g, b;
  float x, y;
  float sz, sp;
  float factor = 0.1;



  Bubble() {
    r = (float)(Math.random()*255);
    g = (float)(Math.random()*255);
    b = (float)(Math.random()*255);
    y = (float)(Math.random()*height+height/2);
    x = (float)(Math.random()*width);
    sz = (float)(Math.random()*40)+15;
    sp = sz*factor;
  }



  void moveX() {
    x += (float)(Math.random()*6)-3;
  }



  void moveY() {
    y -= sp;
    if (r < g+b && r < 225 && y-sz/2 <= height/3+3) {
      sp = 0;
    }
  }



  void checkCollisions(int j) {
    if (y+sz < 0) {
      y = height + sz;
    }
    for (int i = j + 1; i < bubs.size(); i++) {
      Bubble temp = bubs.get(i);
      if (dist(x, y, temp.x, temp.y) <= sz/2 + temp.sz/2) {
        bubs.remove(i);
        bubs.remove(j);
      }
    }
    if (x-sz/2 <= 0 || x+sz/2 >= width) {
      bubs.remove(j);
    }
  }
  
  
  void show() {
    stroke(r, g, b);
    fill(r, g, b);
    ellipse(x, y, sz, sz);
  }
}
