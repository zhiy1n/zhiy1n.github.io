ArrayList poop;
int distance = 50;
boolean flag = true;
public void settings(){
size(500,500);
}
void setup(){

 
  smooth();
  poop = new ArrayList();
  for(int i = 0; i<128; i++){
  
    PVector PD = new PVector (random(-150,150),random(-150,150));
    Dots D = new Dots(PD);
    poop.add(D);
  }
}


void draw(){

  background(255);
  translate(width/2,height/2);
  pushStyle();
  fill(0);
  stroke(0,50);
  ellipse(0,0,400,400);
  popStyle();
  
  for (int i = 8;i<poop.size();i++){
  
    Dots dots1 = (Dots)poop.get(i);
    dots1.display();
    dots1.update();
    //println("i = "+i);
    for(int j=i+1;j<poop.size();j++){
    
      Dots dots2 = (Dots)poop.get(j);
      dots2.update();
     // println("j =" +j);
     if(dist(dots1.location.x,dots1.location.y,dots2.location.x,dots2.location.y)<distance){
     for(int k=j+1;k<poop.size();k++){
       Dots dots3 = (Dots)poop.get(k);
       dots3.update();
      // println("k = " + k);
      if(flag){
      
        fill(dots3.c,50);
        noStroke();
      }else{
      
        noFill();
        stroke(255,50);
   
      }
      if(dist(dots3.location.x,dots3.location.y,dots2.location.x,dots2.location.y)<distance){
      
        beginShape();
        vertex(dots3.location.x,dots3.location.y);
        vertex(dots2.location.x,dots2.location.y);
        vertex(dots1.location.x,dots1.location.y);
       endShape();
      }
     }
    }
  }
 }
 
}

void keyPressed(){

  flag = !flag;
}
