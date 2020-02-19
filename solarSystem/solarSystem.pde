
//float angP = 0.25;
//float angS = 0.25;
float z               = 0;
float anguleX         = -45;
String pathBackgorund = "data_image/2k_stars_milky_way.jpg";

SystemController solarSystem;
float x;
float y;
PImage bg;


void setup(){
  size(1437,719, P3D);
  solarSystem = new SystemController();
  solarSystem.loadData();
  bg = loadImage(pathBackgorund);
  x  = width/2;
  y  = height/2;

}

void draw(){
  background(bg);
  translate(x,y,z);
  rotateX(radians(anguleX));
  solarSystem.moveSystem();
  
  
  /*pushMatrix();
  rotateY(radians(angP));
  sphere(100);
  popMatrix();
  
  
  pushMatrix();
  rotateY(radians(angP));
  //rotateZ(radians(angS));
  translate(-width*0.25,0);
  sphere(20);
  pushMatrix();
  rotateZ(radians(angP));
  //rotateZ(radians(angS));
  translate(50,0);
  sphere(10);
  popMatrix();
  popMatrix();
  
  pushMatrix();
  rotateZ(radians(angP+0.5));
  //rotateZ(radians(angS));
  translate(-width*0.5,0);
  sphere(20);
  pushMatrix();
  rotateZ(radians(angP));
  //rotateZ(radians(angS));
  translate(50,0);
  sphere(10);
  popMatrix();
  pushMatrix();
  rotateZ(radians(angS));
  translate(90,0);
  sphere(10);
  popMatrix();
  popMatrix();
  
  angP = angP + 0.25;
  if(angP >= 360) angP = 0;
  
  angS = angS + 0.10;
  if(angS >= 360) angS = 0;*/
  
}

void keyPressed(){
  float zoom = 100;
  if(key == 'w' || key == 'W'){
    y += zoom;
  }
  if(key == 's' || key == 'S'){
    y -= zoom;
  }
  if(key == 'a' || key == 'A'){
    x -= zoom;
  }
  if(key == 'd' || key == 'D'){
    x += zoom;
  }
  if(key == 'r' || key == 'R'){
    x = width/2;
    y = height/2;
  }
  
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  int zoom = 100;
  if(e < 0){
    z -= zoom;
  } else {
    z += zoom;
  }  
}
    
    
