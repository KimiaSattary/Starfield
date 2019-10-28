Particle[] lights = new Particle[100];
void setup()
{
	size(500,500);
	for(int i = 0; i<100; i++)
	{
		lights[i] = new Particle();
	}
}

void draw()
{
	for(int i = 0; i<100; i++)
	{
		lights[i].show();
		lights[i].move();
	}
}
class Particle
{
	float myX, myY, mySpeed, myAngle;
	int myColor;
	Particle()
	{
		myX = (int)(Math.random()*500);
		myY = 250;
		myAngle = 0;
		mySpeed = 20;
	}
	void show()
	{
		fill(255);
		ellipse(myX, myY,4,4);
	}
	void move()
	{
		if(myX<250)
		{
			myX = myX - (float)(Math.random()*mySpeed);
		}
		else if(myX>250)
		{
			myX = myX + (float)Math.random()*mySpeed;
		}
	}
}

class OddballParticle //inherits from Particle
{
	//your code here
}


