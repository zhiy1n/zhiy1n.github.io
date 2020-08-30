class Dots{
  PVector location;
  PVector velocity;
  color c;
  int radius = 200;
  
  Dots(PVector _PV){
    
  location = _PV;
  int j = (int)random(0,5);
  if(j==0) c = color(#05CDE5);
  if(j==1) c = color(#FFB803);
  if(j==2) c = color(#FF835B);
  if(j==3) c = color(#303E3E);
  if(j==4) c = color(#D68FFF);
  float xt = random(-0.01,0.01);
  float yt = random(-0.01,0.01);
  velocity = new PVector(xt,yt);
  }
  
  void display(){
  fill(c);
  noStroke();
  ellipse(location.x,location.y,2,2);
  }
  
  void update(){
    
  if(dist(location.x,location.y,0,0)>radius){
    
     velocity.mult(-1);
     location.add(velocity);
  }
  else{
  
    location.add(velocity);
  }
  }
}
