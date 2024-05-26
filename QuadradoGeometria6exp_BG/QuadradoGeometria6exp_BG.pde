
  
  //Versão 1 - Geometria Sonora by Rodrigo Gonzales (Rodrivas78) -  06/2018

import ddf.minim.*;
import ddf.minim.ugens.*;

Minim minim;
AudioOutput out;
PImage bg;
int yI;
boolean a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,x,y,z;
int ax,ay,bx,by,cx,cy,dx,dy,ex,ey,fx,fy,f2x,f2y,gx,gy,hx,hy,ix,iy,jx,jy,kx,ky,lx,ly,mx,my,nx,ny,rx,ry,tx,ty,px,py,ox,oy;;
float s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16;  //variáveis p/ controle do fadeout
float velFadeOut;   // armazena velocidade do fadeout
//int x; //variável do translate
//int y;  //   ''         ''
int rnd; //armazena valor randomico
//int d;
//int f;
float g1;
// to make an Instrument we must define a class
// that implements the Instrument interface.
class SineInstrument implements Instrument
{
  Oscil wave;
  Line  ampEnv;
  
  SineInstrument( float frequency )
  {
    // make a sine wave oscillator
    // the amplitude is zero because 
    // we are going to patch a Line to it anyway
    wave   = new Oscil( frequency, 0, Waves.SINE );
    ampEnv = new Line();
    ampEnv.patch( wave.amplitude );
  }
  
  // this is called by the sequencer when this instrument
  // should start making sound. the duration is expressed in seconds.
  void noteOn( float duration )
  {
    // start the amplitude envelope
    ampEnv.activate( duration, 0.1f, 0 );  
    //ampEnv.activate( duration, 0.5f, 0 ); Default  
     // attach the oscil to the output so it makes sound
    wave.patch( out );   
  }
  
  // this is called by the sequencer when the instrument should
  // stop making sound
  void noteOff()
  {
    wave.unpatch( out );    
  //print("go");  
  }
}

void setup()
{    
    //x=590;
    //y=250; 
    ax=0; ay=0; bx=210; by=0; cx=420; cy=0;
    dx=0; dy=210; ex=210; ey=210; fx=420; fy=210; f2x=210; f2y=315;
    gx=0; gy=420; hx=210; hy=420; ix=420; iy=420;
    jx=336; jy=252; kx=315; ky=210; lx=336; ly=420; px=280; py=280;
    tx=315; ty=105; ox=280; oy=140;
    //velFadeOut = 1.2; newDefault
    //velFadeOut = 1.4; //Default
     velFadeOut = 0.06;
    //px=280.875; py=280.875; ox=280.790; oy=139.90;
    //print(f);
 bg = loadImage("milkyway.jpg");
  
  minim = new Minim(this);
  
  // use the getLineOut method of the Minim object to get an AudioOutput object
  out = minim.getLineOut();
    
  size(1600, 900);
noSmooth();
background(0);
translate(590, 250);

stroke(40, 40, 100);
strokeWeight(1);
line(0,0,420,0);     //AC
line(420,0,420,420); //CI
line(420,420,0,420); //IG
line(0,420,0,0);     //GA
line(0,420,420,0);   //GC
line(0,420,420,210); //GF
line(420,210,210,0); //FB
line(210,0,420,420); //BI
line(0,0,420,420);   //AI
line(0,210,420,210); //DF
line(210,0,210,420); //BH
line(420,0,210,210); //DE
line(336,252,336,420); //JL
//line(kx,ky,fx,fy);// KF
//line(ex,ey,kx,ky);// KF
//line(lx,ly,ix,iy);// KF
//line(210,420,420,0); //CH


//stroke(#e24353);
//stroke(#c23592);
//stroke(#a78342);
stroke(#e24353);
//strokeWeight(5);
line(0,420,210,210);  //GE
line(0,210,210,210);  //DE
line(420,420,315,210); //IK
stroke(#a78342);
line(420,420,336,252); //IJ
line(315,210,210,210); //KF
stroke(#0CF534);
line(0,420,336,252);//GJ
stroke(#FFB217);
line(336,252,420,210);//JF

}

void keyPressed()
{ 
  switch( key )
  {
    case 'q': case 'Q': 
      //GC
      out.playNote( 0.001, 1.8, new SineInstrument( 65.413 ) );    
      //s1=300.0;
      s1=6;
      a=true;           
     break; 
    case 'w': case 'W':
      //GF
      out.playNote( 0.001, 1.8, new SineInstrument( 82.744 ) ); 
      //s2=300.0; default
      //s1=255;
      //s2=72;
        s2=6;
      b=true;     
     break; 
    case 'e': case 'E':
        //GI = AC
      out.playNote( 0.001, 1.8, new SineInstrument( 92.508 ) );
      //s3=300.0;
       s3=6; 
      c=true;       
      //rnd = int(random(1,4));
      break; 
    case 'r': case 'R':
       //GE = EI = EC
      out.playNote( 0.001, 1.8, new SineInstrument( 130.827 ) );
      //s4=300.0;
       s4=6;
      d=true; 
      break; 
      //Nova nota2
      case 's': case 'S':
       //BJ
      out.playNote( 0.001, 1.8, new SineInstrument( 137.911 ) );
      //s12=300.0;
       s12=6;
      l=true; 
      break; 
    case 't': case 'T':
       //GF' = IK
      out.playNote( 0.001, 1.8, new SineInstrument( 165.485 ) );
      //s5=300.0;
      s5=6;      
      e=true; 
      break;      
    case 'y': case 'Y':
       //GH = IF
      out.playNote( 0.001, 1.8, new SineInstrument( 185.017 ) );     
      //s6=300.0;
      s6=6;
      f=true;     
      break;
      //Nova nota1
     case 'a': case 'A':
        //IP
     out.playNote( 0.001, 1.8, new SineInstrument( 196.240 ) );
     //s11=300.0;
     s11=6;
     k=true;
     break;
    case 'u': case 'U':
        //IJ
      out.playNote( 0.001, 1.8, new SineInstrument( 206.859 ) );
      //s7=300.0;
      s7=6;
      g=true; 
      break; 
    case 'i': case 'I':
        //LJ
      out.playNote( 0.001, 1.8, new SineInstrument( 231.272 ) );
      //s8=300.0;
      s8=6;
      h=true; 
      break;      
       case 'd': case 'D':
       //BO = PF
      out.playNote( 0.001, 1.8, new SineInstrument( 248.227 ) );
      //s13=300.0;
      s13=6;
      m=true; 
      break; 
      case 'f': case 'F':
       //TC
      out.playNote( 0.001, 1.8, new SineInstrument( 261.667 ) );
      //s14=300.0;
      s14=6;
      n=true; 
      break; 
      case 'g': case 'G':
       //JF' ou JF2
      out.playNote( 0.001, 1.8, new SineInstrument( 275.808 ) );
      //s15=300.0;
      s15=6;
      o=true; 
      break; 
      case 'h': case 'H':
       //JO
      out.playNote( 0.001, 1.8, new SineInstrument( 310.284 ) );
      //s16=300.0;
      s16=6;
      p=true; 
      break; 
    case 'o': case 'O':
        //KF
      out.playNote( 0.001, 1.8, new SineInstrument( 370.035 ) );
      //s9=300.0;
      s9=6;
      i=true;
      break;
      case 'p': case 'P':
        //LI
     out.playNote( 0.001, 1.8, new SineInstrument( 462.544 ) );
     //s10=300.0;
     s10=6;
     j=true;
     break;
     
 
    default: break; 
  }
}

void draw()
{  
  background(bg); 
  translate(590, 250);
stroke(0, 0, 0);
strokeWeight(6);
line(0,0,420,0);     //AC
line(420,0,420,420); //CI
line(420,420,0,420); //IG
line(0,420,0,0);     //GA
line(0,420,420,0);   //GC
line(0,420,420,210); //GF
line(ax,ay,hx,hy);  //AH
line(420,210,210,0); //FB
line(210,0,420,420); //BI
line(0,0,420,420);   //AI
line(0,210,420,210); //DF
line(210,0,210,420); //BH
line(420,0,210,210); //DE
line(336,252,336,420); //JL
line(ix,iy,px,py);
stroke(20, 300, 100);
//point(ox,oy);
//point(px,py);
//point(jx,jy);
//point(tx,ty);

  if(a!=false)
  {    
      //AI // GC
     // stroke(20, s1, 100);
     stroke(237, 0, 0);
      strokeWeight(s1);
      line(ax,ay,ix,iy);
      s1=s1-velFadeOut;     //velocidade do fadeout         
        if(s1<=0)
        {
          a=false;
          //s1=300;
          s1=6;
        }     
  }
    if(b!=false)
  {        
      //GF
      //stroke(#FF4800);
       //stroke(20, s2, 100); Defalut
      stroke(255, 94, 0);
      strokeWeight(s2);
        // stroke(s1, s2, 0);
      line(ax,ay,hx,hy);
      s2=s2-velFadeOut; 
      //s1=s1-velFadeOut;  
      //velocidade do fadeout
        if(s2<=0)
        {
          b=false;
          //s2=72;
          //s1=255;   
          s2=6;
          //s2=300; Defalut 
        }  
  } 
  if(c!=false)
  {        
      //AC, AG, GI
     // stroke(20, s3, 100);
      stroke(255, 132, 0);
      strokeWeight(s3);
      line(ax,ay,gx,gy);
      /*
      Aqui pode ser gerado um sorteio para a vibração povoar os diferentes segmetnos de mesmo tamanho
      if(rnd==1)
      {
      line(gx,gy,ax,ay);
      }
      else if(rnd==2)
      {
      line(gx,gy,ix,iy);
      }
      else if(rnd==3)
      {
      line(ax,ay,cx,cy);
      }
      else if(rnd==4)
      {
      line(cx,cy,ix,iy);
      }
      */
      s3=s3-velFadeOut;   //velocidade do fadeout
        if(s3<=0)
        {
          c=false;
          //s3=300;
          s3=6;
        }  
  }    
  if(d!=false)
  {        
      // BF / EI / EC
      //stroke(20, s4, 100);
      stroke(255,183,0);
      strokeWeight(s4);
      line(bx,by,fx,fy);
      s4=s4-velFadeOut;   //velocidade do fadeout
        if(s4<=0)
        {
          d=false;
          //s4=300;
          s4=6;
        }  
  }  
   if(e!=false)
  {        
      // BK / KI
     // stroke(20, s5, 100);
     stroke(255,213,0);
      strokeWeight(s5);
      line(bx,by,kx,ky);
      s5=s5-velFadeOut;   //velocidade do fadeout
        if(s5<=0)
        {
          e=false;
          //s5=300;
          s5=6;
        }  
  }  
   if(f!=false)
  {        
       // FI / BE / FC
     // stroke(20, s6, 100);
     //stroke(0,26,250);
     stroke(#12caff);
     strokeWeight(s6);      
      line(bx,by,ex,ey);
      s6=s6-velFadeOut;   //velocidade do fadeout
        if(s6<=0)
        {
          f=false;
          //s6=300;
          s6=6;
        }  
  }  
    if(g!=false)
  {        
       // IJ
      //stroke(20, s7, 100);
      stroke(216,255,0);
      
      strokeWeight(s7);
      line(jx,jy,ix,iy);
      s7=s7-velFadeOut;   //velocidade do fadeout
        if(s7<=0)
        {
          g=false;
          s7=6;
        }  
  }  
      if(h!=false)
  {        
       // LJ
      stroke(20, s8, 100);
      line(jx,jy,lx,ly);
      s8=s8-velFadeOut;   //velocidade do fadeout
        if(s8<=0)
        {
          h=false;
          s8=6;
        }  
  }  
        if(i!=false)
  {        
       // EK / KF
      stroke(20, s9, 100);
      line(ex,ey,kx,ky);// KF
       s9=s9-velFadeOut;   //velocidade do fadeout
        if(s9<=0)
        {
          i=false;
          s9=6;
        }  
  }  
       if(j!=false)
  {        
       // LI
      stroke(20, s10, 100);
      line(lx,ly,ix,iy);
       s10=s10-velFadeOut;   //velocidade do fadeout
        if(s10<=0)
        {
          j=false;
          s10=6;
        }  
  }  
    if(k!=false)
  {        
       // IP
      stroke(20, s11, 100);
      line(ix,iy,px,py);
       s11=s11-velFadeOut;   //velocidade do fadeout
        if(s11<=0)
        {
          k=false;
          s11=6;
        }  
  }  
      if(l!=false)
  {        
       // BJ
      stroke(20, s12, 100);
      line(bx,by,jx,jy);
       s12=s12-velFadeOut;   //velocidade do fadeout
        if(s12<=0)
        {
          l=false;
          s12=6;
        }  
  }  
      if(m!=false)
  {        
      //BO = PF
      stroke(20, s13, 100);
      line(px,py,fx,fy);
       s13=s13-velFadeOut;   //velocidade do fadeout
        if(s13<=0)
        {
          m=false;
          s13=6;
        }  
  } 
     if(n!=false)
  {        
      //TC
      stroke(20, s14, 100);
      line(tx,ty,cx,cy);
       s14=s14-velFadeOut;   //velocidade do fadeout
        if(s14<=0)
        {
          n=false;
          s14=6;
        }  
  } 

  if(o!=false)
  {    
      // JF' ou JF2
      stroke(20, s15, 100);
      line(jx,jy,f2x,f2y);
       s15=s15-velFadeOut;   //velocidade do fadeout
        if(s15<=0)
        {
          o=false;
          s15=6;
        }  
  } 
  
  if(p!=false)
  {    
      // JO
      //stroke(20, s16, 100);
      stroke(#12caff);
      strokeWeight(s16); 
      line(jx,jy,ox,oy);
       s16=s16-velFadeOut;   //velocidade do fadeout
        if(s16<=0)
        {
          p=false;
          s16=6;
        }  
  } 


}  // fim do draw() 
