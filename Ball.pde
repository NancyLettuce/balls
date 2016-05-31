class Ball {
  
  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;
      
  //other constants necessary?
  
  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  int state;

  
  Ball() {
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color( r, g, b );
    
    rad = 10;
    
    x = random( (width - r) + r/2 );
    y = random( (height - r) + r/2 );

    dx = random(10) - 5;
    dy = random(10) - 5;
    
    state = MOVING;
  }
  

  void move() {
    x = x + dx;
    y = y + dy;
    bounce();
  }
 
 
 boolean isTouching( Ball other ) {
    if ((int)(this.x) == (int)(other.x) && (int)(this.y) == (int)(other.y)) {state = GROWING;}
    if (state == GROWING) {
      dx = 0;
      dy = 0;
      for (int i = 0; i < 10; i ++ ) 
        {rad += 2;}
        state = SHRINKING;
      }
    if (state == SHRINKING) {
      while (rad != 0) {rad --;}
      state = DEAD;
      }
    if (state == DEAD) {//}
 }
 
  
}//end class Ball

