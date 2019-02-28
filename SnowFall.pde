color g;
class box{
  float xbox;
  float ybox;
  float boxSpeed;
  float yboxSpeed;
  float boxSize;
  
  box() {
    g=color(255);
    xbox= random(width);
    ybox=  random(height);
    boxSpeed= random(.5,2);
     yboxSpeed=random(1,3);
    boxSize=5; 
  }
  void display() {
    fill(g);
    ellipse(xbox,ybox,boxSize, boxSize);
    
    
  }
  void boxMove(){
    xbox+=boxSpeed;
     ybox+=yboxSpeed;
    
    if (xbox > width) {
      boxSize=random(5,8);
      xbox= 0;
    ybox=  random(height);
    }
    if (ybox > height) {
      boxSize=random(5,8);
      ybox= 0;
    xbox=  random(width);
    }
    
  }

}