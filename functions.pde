void swItch(int x, int y, boolean s, int button)
{
  if(s)  image(S[button][1],x,y);
  else   image(S[button][0],x,y);
}

void images()
{
  bg     =loadImage("BGmax.png");
  S[0][0]=loadImage("Fan_Off.png");
  S[0][1]=loadImage("Fan_On.png");
  S[1][0]=loadImage("Light_Off.png");
  S[1][1]=loadImage("Light_On.png");
  S[2][0]=loadImage("Lamp_Off.png");
  S[2][1]=loadImage("Lamp_On.png");
  S[3][0]=loadImage("LF_Off.png");
  S[3][1]=loadImage("LF_On.png");
  S[4][0]=loadImage("LaF_Off.png");
  S[4][1]=loadImage("LaF_On.png");
  S[5][0]=loadImage("Fan_cyclone_Off.png");
  S[5][1]=loadImage("Fan_cyclone_On.png");
  S[6][0]=loadImage("Power_Off.png");
  S[6][1]=loadImage("Power_On.png");
}

void lines()
{
  for(int i=0;i<8;i++)
  {
    hw[i][0]=int(random(0,width));
    hw[i][1]=int(random(0,height));
  }
}

void randyLine()
{
  stroke(255,100);
  for(int i=0;i<8;i++)
  {
    line(hw[i][0],0,hw[i][0],height);
    line(0,hw[i][1],width,hw[i][1]);
  }
}

void time()
{
  Ho=nf(hour(),2);
  Mi=nf(minute(),2);
  Da=nf(day(),2);
  Mo=nf(month(),2);
  Ye=nf(year(),4);
  
  textSize(70);
  text(Ho+":"+Mi,90,170);
  textSize(20);
  text(Da+"/"+Mo+"/"+Ye,130,200);
}