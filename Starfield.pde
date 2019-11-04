Particle[] lights = new Particle[100];
OddballParticle what = new OddballParticle();
void setup()
{
  noStroke();
  background(10,10,50);
	size(500,500);
	for(int i = 0; i<100; i++)
	{
		lights[i] = new Particle();
	}
  frameRate(100);
}

void draw()
{
  background(10,10,50);
  for(int h=0; h<200; h++)
  {
    fill(255,255,255,200-h);
    line(0,250-h,500,250-h);
  }
	for(int i = 0; i<100; i++)
	{

		lights[i].show();
    what.show();
    what.move();
		lights[i].move();
	}
  for(int k = 0; k<200;k++)
  if(k%10==0)
  what.move();
 
}
class Particle
{
	float myX, myY, mySpeed, myAngle;
	int myColor;
	Particle()
	{
		myX = 250;
		myY = 250;
		myAngle = (float)(Math.random()*2*(PI));
		mySpeed = (float)Math.random()*2+2;
	}
	void show()
	{
		fill(255);
		rect(myX, myY,(Math.abs(250-(myY)))/4,(Math.abs(250-(myY)))/4);
	}
	void move()
	{
		
		myX = myX + (float)(cos(myAngle)*mySpeed);
	  if(myX>550 || myX<-100)
    {
      myX=250;
      myY=250;
      myAngle = (float)(Math.random()*2*(PI));
      mySpeed = (float)Math.random()*2+2;
    }
    myY = myY +(float)Math.sin(myAngle)*mySpeed;
    if(myY>550 || myY<-100)
    {
      myY=250;
      myX=250;
      myAngle = (float)(Math.random()*2*(PI));
      mySpeed = (float)Math.random()*2;
    }
	}
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    
  }
	void show()
  {
    fill(255,0,0);
    ellipse(myX+20, myY, 10,10);
  }
  void move()
  {
  
    myX = myX + (float)(Math.random()*3)-1;
    myY = myX + (float)(Math.random()*3)-10;
    if(myX<-10||myX>510)
    {
      myX=250;
      myY=250;
    }
    if(myY<-10||myY>510)
    {
      myX=250;
      myY=250;
    }
  }
}
