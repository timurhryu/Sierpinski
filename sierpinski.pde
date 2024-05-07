int wdt=500;
int hgt=(int)((sqrt(3)/2)*wdt);

void setup(){
 windowResize(wdt,hgt);
 background(0);
 
}
void draw(){
 sierpinsk(500, width/2, 0);
  
}

void sierpinsk( int len, int x, int y) {
  if (len<=20) {
    fill(255);
    triangle(x, y, x-len/2, y+sqrt(3)/2*len , x+len/2, y+sqrt(3)/2*len );
  } else {
    sierpinsk(len/2, x, y);
    sierpinsk(len/2, x-len/4, (int)(y+(sqrt(3)/2)*len/2));
    sierpinsk(len/2, x+len/4,(int) (y+(sqrt(3)/2)*len/2));
    fill(255);
  }
}
