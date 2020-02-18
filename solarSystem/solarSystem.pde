
CelestialBody b;

void setup(){
  size(600,600, P3D);
  b = new CelestialBody(width/2, height/2,-10, 100, "Pluton");
}

void draw(){
  background(0);
  b.rotateBody();
  b.drawBody();
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  if(e < 0){
    b.moveInZ(100);
  } else {
    b.moveInZ(-100);
  }  
}
    
    
