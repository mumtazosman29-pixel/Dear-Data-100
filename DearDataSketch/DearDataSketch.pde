color shade1;          //Lighest
color shade2;          //Medium
color shade3;          //Dark
color anchorBorderColor;

void setup() {
  size(1200,800);     //canvas size
  background(247,245,240);
  
  shade1 = color(180,60,85);
  shade2 = color(12,0,32);
  shade3 = color(70,0,15);
  anchorBorderColor = color(0);
  
  noLoop();   // Stops draw() from running continuously
  
}

void draw() {
 
  drawObservations("Y", 1, "A", 3, "C");
  drawObservations("X", 1, "C", 1, "S");

}

void drawObservations (String PersonalMatch, int NoItems , String StyleType , int shade , String Location) {
  if  ( StyleType.equals("C")){
      ellipse(100, 100, 20, 20); 
  } else if ( StyleType.equals("A")) {
    triangle(90, 110, 100, 90, 110, 110);
  } else if ( StyleType.equals("H")) {
    rect(100, 100, 20, 20);
  }
  
  if (shade == 1) {
    fill(shade1);
  } else if (shade == 2) {
    fill(shade2);
  } else if (shade == 3) {
    fill(shade3);
  }
  
  if (PersonalMatch.equals("Y")) {
    stroke(0);
    strokeWeight(3);
  } else {
    noStroke();
  }
}
