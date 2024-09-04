/*---------------------------------
 Name: Giovanna Alonso
 Date: Sept 2024
 Tittle:  waVEs
 
 Description:
It is a form of see the ever evolving passing 
of life and how everything's always in motion 
and when we blink there's always something happening 
 
 -----------------------------------*/
float sw, alpha; // variables for motion and stroke weight
float distY = 10; // variables for vertical distance between arc rows
float arquito=200; // variable to determine the arc size 

void setup (){
  size(900, 900);
} // canvas setup

void draw (){
  background(0,0,0);
  
  mouseX = constrain(mouseX,10,width);  //controls the arc size with the position of the mouse in X
  mouseY = constrain(mouseY,10,height); //controls the spacing between each arc with the position of the mouse in Y
  
  distY = mouseY; // defining the variables into the mouse position
  arquito = mouseX; 
  
  noFill(); // we are telling the system that the arcs must not have fill 
  stroke(random(255)); // arc stroke color is set to a random grayscale value on each draw cycle, creating glitches.

  for (float y=-arquito; y<height+arquito; y+=distY) { 
    sw = map (sin(radians(y+alpha)),-1, 1, 2, distY); // this function changes the stroke weight while you move the mouse while creating the wave effect
    strokeWeight(sw);
     for (float x1=arquito/2; x1<width+arquito; x1+=arquito) {
  arc(x1, y, arquito/2,arquito/2, 0, PI); // this function helps me form the waves with one arc facing up and another facing down
     }
      sw = map (sin(radians(y-alpha)),-1, 1, 2, distY);
    strokeWeight(sw);
  for (float x2=0; x2<width+arquito; x2+=arquito) {
  arc(x2, y, arquito/2,arquito/2, PI, TWO_PI);
     } // the for function distributes the drawing across the canvas 
  }
  alpha++; // this change the stroke weight based on the sine to make it move =^_^=
}
  
