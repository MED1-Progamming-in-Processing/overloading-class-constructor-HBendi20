class Circle {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float diameter;
  color particleColor;
  int shapetype; 
  float xTr1;
  float xTr2;
  float xTr3;
  float yTr1;
  float yTr2;
  float yTr3;


  Circle(float x, float y, float xSpeed, float ySpeed, float dia) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.diameter = dia;
    this.shapetype = round(random(0.5,2.5));
   //color
    this.particleColor = color(round(random(255)),round(random(255)),round(random(255)));
  }
  
  
  Circle(float x, float y, float xSpeed, float ySpeed, float dia, int type) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.diameter = dia;
    this.shapetype = type;
    this.particleColor = color(round(random(255)),round(random(255)),round(random(255)));
    if(type==3){
      this.xTr1 =x;
      this.yTr1 =y;
      this.xTr2 =round(random(width));
      this.yTr2 =round(random(height));
      this.xTr3 =round(random(width));
      this.yTr3 =round(random(height));;
    }
  }

  void move() {
   
    
    if(shapetype==3){
       xTr1 += xSpeed;
    if (xTr1 <= 0|| xTr1 >= width) {
      xSpeed *= -1;
    }

    yTr1 += ySpeed;
    if (yTr1 <= 0 || yTr1 >= height) {
      ySpeed *= -1;
    }
    
    xTr2 += xSpeed;
    if (xTr2 <= 0|| xTr2 >= width) {
      xSpeed *= -1;
    }

    yTr2 += ySpeed;
    if (yTr2 <= 0 || yTr2 >= height) {
      ySpeed *= -1;
    }
    
    xTr3 += xSpeed;
    if (xTr3 <= 0|| xTr3 >= width) {
      xSpeed *= -1;
    }

    yTr3 += ySpeed;
    if (yTr3 <= 0 || yTr3 >= height) {
      ySpeed *= -1;
    }
    } 
    else if(shapetype<=3){
     x += xSpeed;
    if (x <= 0+diameter/2|| x >= width-diameter/2) {
      xSpeed *= -1;
    }

    y += ySpeed;
    if (y <= 0+diameter/2 || y >= height-diameter/2) {
      ySpeed *= -1;
    }
    }
  }
  
  void display(){
    noStroke();
    fill(particleColor);
    if (shapetype==1){
   ellipse(x, y, diameter, diameter); 
    }
    else if (shapetype==2){
   rectMode(CENTER);
   rect(x,y,diameter,diameter);
    }
    else {
      triangle(xTr1,yTr1,xTr2,yTr2,xTr3,xTr3);
    }
  }
}
