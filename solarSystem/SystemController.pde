public class SystemController{
  
  Star star;
  
  public SystemController(){
    star = new Star(100,0.25,0.25,"Sol","data_image/2k_sun.jpg");
  }
  
  public void loadData(){
    star.add(
      new Planet(50,0.25,0.10,-width*0.25,"Mercurio", "data_image/2k_mercury.jpg")
    );
    Planet p = new Planet(45,0.65,0.40,-width*0.5,"Venus","data_image/2k_venus_atmosphere.jpg");
    p.add(new Satellite(10,0.35,0.1,60,"S0", "data_image/2k_moon.jpg"));
    p.add(new Satellite(10,0.45,0.3,90,"S2", "data_image/2k_moon.jpg"));
    star.add(p);
  }
  
  public void moveSystem(){
    star.move();
  }
    
  
}
