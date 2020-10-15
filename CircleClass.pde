Circle circle;
Circle triang;
float circleDiameter = 50;

void setup() {
  size(1000, 1000);
  circle = new Circle(random(circleDiameter,width-circleDiameter), random(circleDiameter,height-circleDiameter), random(-3, 3), random(-3, 3), circleDiameter);
  //triang= new Circle(random(circleDiameter,width-circleDiameter), random(circleDiameter,height-circleDiameter), random(-3, 3), random(-3, 3), circleDiameter,3);
}

void draw() {
  background(200);

  circle.move();
  circle.display();
  triang.move();
  triang.display();
  if(mousePressed){
    if(circle.shapetype==1){
      circle.shapetype=2;
      //delay(100);
    }
    else if(circle.shapetype==2){
      circle.shapetype=1;
      //delay(100);
    }
  }
 }
