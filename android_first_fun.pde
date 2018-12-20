int time=0;
int[][] hw=new int[8][2];
boolean a0,a1,a2,a3,a4,a5,a6;
PImage[][] S= new PImage[7][2];
PImage bg;
String Ho,Mi,Da,Mo,Ye;

void setup()
{
  orientation(LANDSCAPE);
  size(1280,720);
  rectMode(CENTER);
  imageMode(CENTER);
  images();
  lines();
}

void draw()
{
  background(0);
  randyLine();
  
  if(mousePressed&&time>=5)
  {
          if(mouseX>  width/4-100&&  mouseX<  width/4+100&&
             mouseY>  height/2-75&&  mouseY<  height/2+75)
             {
               if(!a0)  {  a6=true;   }
               else     {  a3=false;  }  a0=!a0;
             }
     else if(mouseX>2*width/4-100&&  mouseX<2*width/4+100&&
             mouseY>  height/2-75&&  mouseY<  height/2+75)
             {
               if(a1)  {  a5=false;  a3=false;  a4=false;  }
               else    {  a6=true;   }  a1=!a1;
             }
     else if(mouseX>3*width/4-100&&  mouseX<3*width/4+100&&
             mouseY>  height/2-75&&  mouseY<  height/2+75)
             {
               if(!a2)  {  a6=true;   }
               else     {  a4=false;  }  a2=!a2;
             }
     else if(mouseX>3*width/8-250&&  mouseX< 3*width/8+50&&
             mouseY>3*height/4-40&&  mouseY<3*height/4+40)
             {
               if(!a3)  {  a0=true;   a1=true;   a6=true;  }  a3=!a3;
             }
     else if(mouseX> 5*width/8-50&&  mouseX<5*width/8+250&&
             mouseY>3*height/4-40&&  mouseY<3*height/4+40)
             {
               if(!a4)  {  a1=true;   a2=true;   a6=true;  }  a4=!a4;
             }
     else if(mouseX>2*width/4-100&&  mouseX<2*width/4+100&&
             mouseY>  height/4-30&&  mouseY<  height/4+30)
             {
               if(!a5)  {  a6=true;  a1=true;  }  a5=!a5;
             }
     else if(mouseX>      1150-50&&  mouseX<      1150+50&&
             mouseY>       130-50&&  mouseY<       130+50)
             {
               if(a6)  {  a0=false;  a1=false;  a2=false;  a3=false;
                          a4=false;  a5=false;}  a6=!a6;
             }
     lines();
     time=0;
  }
  
  time();
  
  swItch(  width/4,      height/2,a0,1);
  swItch(2*width/4,      height/2,a1,0);
  swItch(3*width/4,      height/2,a2,2);
  swItch(3*width/8-100,3*height/4,a3,3);
  swItch(5*width/8+100,3*height/4,a4,4);
  swItch(2*width/4,      height/4,a5,5);
  swItch(     1150,           130,a6,6);
  
  time++;
  println(a0);
  println(a1);
  println(mouseX);
  println(mouseY);
}