// Recreation of "25 Squares", 1991 by Vera Molnar
//August 23, 2015  

int row = 5;
float gap = (float)random(6.2, 3.3);

void setup() {
 size(600, 600);
 background(225); 
 noLoop(); 
 rectMode(CORNER);
 noStroke();
 frameRate(1);
 randomSeed(hour() + minute() + second() + millis());

}

void draw () {
  
 background(120); // grey background


//int num = (int)random(3, 11); //random number of squares each frame
  int num = 5;
  int base_gap = 5;
// int gap = (int) random(5, 48); //random gap b/w each square
  
  
  
// calculate size of individual squares w/ given # and gaps b/w them
float cellsize = (width - (num + 1) * base_gap) / (float)num;

//print square
println("cellsize = " + cellsize);

//shadow offset
float offsetX = cellsize/16.0;
float offsetY = cellsize/16.0;

for (int i = 0; i<num; i++) {
 for(int j = 0; j<num; j++) {
    
   fill(140, 180); //shadow
   int gap = (int) random(0, 7);
   rect(gap * (i+1) + cellsize * i + offsetX, gap * (j+1) + cellsize * j + offsetY, cellsize, cellsize);
   
   //fill(247, 57, 57, 180);
     if(gap < 6) fill(123, 0, 20, 180);
       else fill(55, 0, 0, 180);
   rect(gap * (i+1) + cellsize * i, gap * (j+1) + cellsize * j, cellsize, cellsize);

 }   
}
  
}
