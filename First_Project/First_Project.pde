float i = 0;
float j = 0;
PShape globe;
PImage planetTexture;
PImage bg;
String planetinfo = "Planet : Earth, Diameter : 12,756 km";
float planetmultiplier = 1;
float earthsize = 50;

void setup()

{
  size(1920, 1080, P3D);
  planetTexture = loadImage("earth1.jpg");
  bg = loadImage("bg1.jpg");
  lights();
  frameRate(60);
  noStroke();
  noFill();
  //background(bg);
}


void draw()
{
  
  background(bg);
  
  //planet  information
  textAlign(LEFT, TOP);
  textSize(25);
  fill(255);
  text(planetinfo, 0, 0);
  
  pushMatrix();
  globe = createShape(SPHERE, earthsize*planetmultiplier);
  globe.setTexture(planetTexture);
  popMatrix();

  lights();

  pushMatrix();  
  translate(width/2, height/2);


  if (keyPressed && key == 'w' ) 
  {

    i = i + 1;
  }
  if (keyPressed && key == 'd') 
  {

    j = j + 1;
  }

  if (keyPressed && key == 's' ) 
  {

    i = i - 1;
  }
  if (keyPressed && key == 'a') 
  {

    j = j - 1;
  }


  rotateY(radians(j));
  rotateX(radians(i));


  shape(globe);
  popMatrix();

  if (keyPressed && key == '0')
  { 
    
    planetTexture = loadImage("sun.jpg");
    planetinfo = "Star : Sun, Diameter : 1.3927 million km";
    planetmultiplier = 109;
  }

  if (keyPressed && key == '1')
  {     
    planetTexture = loadImage("mercury.jpg");
    planetinfo = "Planet : Mercury, Diameter : 4,879.4 km";
    planetmultiplier = 0.383;
  }


  if (keyPressed && key == '2')
  { 
    planetTexture = loadImage("venus.jpg");
    planetinfo = "Planet : Venus, Diameter : 12,104 km";
    planetmultiplier = 0.948;
  } 

  if (keyPressed && key == '3')
  {     
    planetTexture = loadImage("earth1.jpg");
    planetinfo = "Planet : Earth, Diameter : 12,756 km";
    planetmultiplier = 1;
  }

  if (keyPressed && key == '4')
  {     
    planetTexture = loadImage("mars.jpg");
    planetinfo = "Planet : Mars, Diameter : 6,787 km";
    planetmultiplier = 0.532;
  }

  if (keyPressed && key == '5')
  {    
    planetTexture = loadImage("jupiter.jpg");
    planetinfo = "Planet : Jupiter, Diameter : 142,800 km";
    planetmultiplier = 11.2;
  }

  if (keyPressed && key == '6')
  {     
    planetTexture = loadImage("saturn.jpg");
    planetinfo = "Planet : Saturn (no ring), Diameter : 120,660 km";
    planetmultiplier = 9.46;
  }

  if (keyPressed && key == '7')
  { 
    planetTexture = loadImage("uranus.jpg");
    planetinfo = "Planet : Uranus, Diameter : 51,118 km";
    planetmultiplier = 4.01;
  }

  if (keyPressed && key == '8')
  { 
    planetTexture = loadImage("neptune.jpg");
    planetinfo = "Planet : Neptune, Diameter : 49,528 km";
    planetmultiplier = 3.88;
  }

  if (keyPressed && key == '9')
  {     
    planetTexture = loadImage("pluto.jpg");
    planetinfo = "Planet : Pluto, Diameter : 2,300 km";
    planetmultiplier = 0.181;
  }
}
