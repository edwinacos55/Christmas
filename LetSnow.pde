box boxes;
box[] boxed;
color r= color(#E3072F);
int total;
PImage tree;
PImage cabin;
PImage snowman;
PImage christmas;

void setup() {
size(1000,720);
tree= loadImage("tree.png");
cabin=loadImage("Cabin.png");
christmas= loadImage("christmas.png");
snowman= loadImage("snowman.png");

total=100;
boxed= new box[1000000];

for (int i=0; i<boxed.length; i++){
  boxed[i]= new box();
}

boxes= new box();
}



void draw() {
  background(#2B40ED);
  image(tree,350,360,200,300);
  image(tree,50,360,200,300);
  image(tree,200,360,200,300);
  image(cabin,450,350,350,300);
  image(christmas,700,100,300,650);
  image(snowman,560,530,60,120);
  fill(255);
  noStroke();
    rect(0,650,width,200);
  for (int i=0; i<total; i++){
  boxed[i].display();
  boxed[i].boxMove();
  
  }
  
}
void mousePressed() {
total+=100;
if (mouseButton == RIGHT) {
  total=100;
}
}