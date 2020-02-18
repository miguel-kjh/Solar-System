public class CelestialBody implements Revolution{
  private PShape body;
  private float oringX,oringY,oringZ;
  private DataCalculation dataCalculation;
  private String name;
  private float ang = 0.25;
  
  public CelestialBody(float oringX,float oringY,float orignZ, int dimension, String name){
    beginShape();
    this.body   = createShape(SPHERE, dimension);
    endShape(CLOSE);
    this.oringX = oringX;
    this.oringY = oringY;
    this.oringZ = oringZ;
    this.name   = name;
  }
  
  public void move(){
    
  }
  
  public void rotateBody(){
    //pushMatrix();
    translate(oringX,oringY,oringZ);
    rotateX(radians(-45));
    rotateY(radians(ang));
    //popMatrix();
    ang += 0.25;
    if(ang >= 360){
      ang = 0;
    }
  }
  
  public void drawBody(){
    shape(body);
  }
  
  public void moveInZ(int rest){
    oringZ -= rest;
  }
  
}
