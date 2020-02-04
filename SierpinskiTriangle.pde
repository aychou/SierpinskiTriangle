
public void setup()
{
	size(500,500);
	background(0); 
	
}
public void draw()
{
	fill(0);
	noStroke();
	sierpinski(0, 500,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(double x, double y, double len) 
{
	if(len<=3)
	{
		triangle((float)x, (float)y, (float)(x+len), (float)y, (float)(x+len/2), (float)(y-len));
	}
	else
	{
		fill((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255));
		sierpinski(x,y, len/2);
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		sierpinski(x+len/2, y, len/2);
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		sierpinski(x+len/4, y-len/2, len/2);
	}
}