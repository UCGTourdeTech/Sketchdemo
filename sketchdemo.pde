 //Setting up the canvas
void setup(){
size(800, 600);
smooth();
background(204);
frameRate(60);
}

 //Setting the variables

int radius = 40;
float x = -radius;
float speed = 10;

//Drawing the visual elements

void draw() {
  stroke(0);
  
 //Drawing the graphic objects
fill(0, 0, 255);
ellipse(278, 100, 400, 400);

fill(255, 255, 50);
ellipse(120, 100, 110, 110);
ellipse(400, 60, 18, 18);

fill(255, 0, 0);
rect(180, 60, 220, 40); 

strokeWeight(10);
arc(20, 60, 60, 60, 0, HALF_PI);

strokeWeight(15);
fill(0, 255, 0, 150); //Setting the fill color with transparency
arc(180, 100, 80, 80, 0, PI+HALF_PI);

strokeWeight (20);
arc(320, 220, 80, 80, PI, TWO_PI+HALF_PI);
arc(320, 360, 80, 80, QUARTER_PI, PI+QUARTER_PI);

 // Drawing the Robot
ellipseMode(RADIUS);
 // Neck
strokeWeight(5);
stroke (225);// Set stroke to light gray
line(566, 257, 566, 162);   // Left
line(576, 257, 576, 162);   // Middle
line(586, 257, 586, 162);   // Right
 // Antennae
line(576, 155, 546, 92);    // Small
line(576, 155, 596, 56);    // Tall
line(576, 155, 642, 170);   // Medium
 // Body
noStroke();                 // Disable stroke
fill(102);                  // Set fill to gray
ellipse(564, 377, 33, 33);  // Antigravity orb
fill(0);                    // Set fill to black
rect(519, 257, 90, 120);    // Main body
fill(102);                  // Set fill to gray
rect(519, 274, 90, 10);      // Gray stripe
 // Head
fill(0);                    // Set fill to black
ellipse(576, 155, 45, 45);  // Head
fill(255);                  // Set fill to white
ellipse(588, 150, 14, 14);  // Large eye
fill(0);                    // Set fill to black
ellipse(588, 150, 3, 3);    // Pupil
fill(127);                  // Set fill to light gray
ellipse(563, 148, 5, 5);    // Small eye 1
ellipse(596, 130, 4, 4);    // Small eye 2
ellipse(605, 162, 3, 3);    // Small eye 3

 //Signing off
fill(0);
textSize(36);
text("uCodeGirl...Ganapathy", 25, 560);

 //Animation of Pac Man
x += speed; // Increase the value of x
fill(255, 255, 50);
arc(x, 550, radius, radius, 0.52, 5.76);

 //Saving the image as a JPEG file
 save("mySketch.jpg");

}
