import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

/*
This is a project meant to learn about resource loading, the desired end result is a 3d rotateable map of the united states, with the height of states changing based on data
that can be inputted through a text file.

Started Dec 22, 2016


created by Ethan Jones
Just in case you were thinking of stealing this awful awful program.


*/





/*
Notes:

-Better rotation system would be nice. Check robotDemo for something to pillage;
-Should do some scaling thing, i.e: everything is measured in relation to value of lowest state, but then, data should be preformatted anyway.
-Use temporary 255 alpha image load to check proportions, then draw image. Drastically reduces framrates/resolution.
*/




float[] dataSet = new float[49]; //If you start getting null pointer errors, it's because you added states and didn't update this.


PImage ak; //0
PImage al; 
PImage ar; 
PImage az;
PImage ca;
PImage co;
PImage ct;
PImage de;
PImage fl;
PImage ga;
PImage id;
PImage il;
PImage in;
PImage ia;
PImage ks;
PImage ky;
PImage la;
PImage me;
PImage md;
PImage ma;//20
PImage mi;
PImage mn;
PImage ms;
PImage mo;
PImage mt;
PImage ne;
PImage nv;
PImage nh;
PImage nj;
PImage nm;//30
PImage ny;
PImage nc;
PImage nd;
PImage oh;
PImage ok;
PImage or;
PImage pa;
PImage ri;
PImage sc;
PImage sd;//40
PImage tn;
PImage tx;
PImage ut;
PImage vt;
PImage va;
PImage wa;
PImage wv;
PImage wi;
PImage wy;//49






//There has to be a better way to do this.

state arkansas = new state();
state alaska = new state();
state arizona = new state();
state california = new state();
state colorado = new state();
state conneticut = new state();
state delaware = new state();
state florida = new state();
state georgia = new state();
state idaho  = new state();
state illinois  = new state();
state indiana  = new state();
state iowa  = new state();
state kansas  = new state();
state kentucky  = new state();
state lousiana = new state();
state maine = new state();
state maryland = new state();
state massachusetts = new state();
state michigan = new state();
state minnesota = new state();
state mississippi = new state();
state missouri = new state();
state montana = new state();
state nebraska = new state();
state nevada = new state();
state newHampshire = new state();
state newJersey = new state();
state newMexico = new state();
state newYork = new state();
state northCarolina = new state();
state northDakota = new state();
state ohio = new state();
state oklahoma  = new state();
state oregon = new state();
state pennsylvania = new state();
state rhodeIsland = new state();
state southCarolina = new state();
state southDakota = new state();
state tennessee = new state();
state texas  = new state();
state utah  = new state();
state vermont = new state();
state virginia = new state();
state washington = new state();
state westVirginia = new state();
state wisconsin = new state();
state wyoming = new state();

/*

PImage wa; //Washington State
PImage ak;
PImage al;
PImage ar;
PImage az;
PImage ca;
PImage co;
PImage ct;
PImage de;
PImage fl;
*/
















state[] allStates = {
  arkansas  ,      
  alaska     ,   
  arizona     ,   
  california   ,     
  colorado      ,  
  conneticut     ,   
  delaware        ,
  florida        ,
  georgia        ,
  idaho         ,
  illinois       ,  
  indiana         ,
  iowa         ,
  kansas        , 
  kentucky       ,  
  lousiana        ,
  maine        ,
  maryland      ,  
  massachusetts  ,      
  michigan        ,
  minnesota        ,
  mississippi       , 
  missouri        ,
  montana        ,
  nebraska        ,
   newHampshire       , 
   newJersey        ,
   newMexico     ,   
   newYork        ,
  northCarolina ,       
  northDakota    ,    
  ohio        ,
  oklahoma        , 
  oregon        ,
  pennsylvania ,       
  rhodeIsland   ,     
  southCarolina   ,     
  southDakota    ,    
  tennessee       , 
  texas         ,
  utah         ,
  vermont       , 
  virginia       , 
  washington      ,  
  westVirginia     ,   
  wisconsin        ,
  wyoming        ,

};

state[] orderToDrawStates = new state[allStates.length];

void setup(){
  for(int i=0;i<dataSet.length;i++){
  
  dataSet[i] = 
Float.parseFloat(loadStrings("data.txt")[i]); } //ew

  size(1500,1500,P3D);





































































  al = loadImage("States/al.png");//0
  ar = loadImage("States/ar.png"); 
  az = loadImage("States/az.png");
  ca = loadImage("States/ca.png");
  co = loadImage("States/co.png");
  ct = loadImage("States/ct.png");
  de = loadImage("States/de.png");
  fl = loadImage("States/fl.png");
  ga = loadImage("States/ga.png");
  id = loadImage("States/id.png");
  il = loadImage("States/il.png");
  in = loadImage("States/in.png");
  ia = loadImage("States/ia.png");
  ks = loadImage("States/ks.png");
  ky = loadImage("States/ky.png");
  la = loadImage("States/la.png");
  me = loadImage("States/me.png");
  md = loadImage("States/md.png");
  ma = loadImage("States/ma.png");//20
  mi = loadImage("States/mi.png");
  mn = loadImage("States/mn.png");
  ms = loadImage("States/ms.png");
  mo = loadImage("States/mo.png");
  mt = loadImage("States/mt.png");
  ne = loadImage("States/ne.png");
  nv = loadImage("States/nv.png");
  nh = loadImage("States/nh.png");
  nj = loadImage("States/nj.png");
  nm = loadImage("States/nm.png");//30
  ny = loadImage("States/ny.png");
  nc = loadImage("States/nc.png");
  nd = loadImage("States/nd.png");
  oh = loadImage("States/oh.png");
  ok = loadImage("States/ok.png");
  or = loadImage("States/or.png");
  pa = loadImage("States/pa.png");
  ri = loadImage("States/ri.png");
  sc = loadImage("States/sc.png");
  sd = loadImage("States/sd.png");//40
  tn = loadImage("States/tn.png");
  tx = loadImage("States/tx.png");
  ut = loadImage("States/ut.png");
  vt = loadImage("States/vt.png");
  va = loadImage("States/va.png");
  wa = loadImage("States/wa.png");
  wv = loadImage("States/wv.png");
  wi = loadImage("States/wi.png");
  wy = loadImage("States/wy.png");//49
  
  
  //orderToDrawStates = getStateOrder(); This can be used when all states are properly constructed 
  //PImage imageC,float xC,float yC,float rC, float gC, float bC, float scaleC, int dataIdC
  washington.constructor(loadImage("States/wa.png"),0,0,98,155,247,1,44);
  oregon.constructor(or,washington.x+3,washington.y+252,255,243,30,1.08,34);
  california.constructor(ca,oregon.x+7,oregon.y+(oregon.h*oregon.scale),255,1,25,1.2,3);
  nevada.constructor(nv,((oregon.x+(oregon.w*oregon.scale))/2)-9,oregon.y+(oregon.h*oregon.scale),255,1,25,.7,325);
  utah.constructor(ut,nevada.x+(nevada.w*nevada.scale),nevada.y,255,255,0,.57,41);
  idaho.constructor(id,washington.x+washington.w-20,washington.y,255,0,0,.812,9);
} 
public class state{
  PImage img;
  float x,y;
  float w,h,s;
  int dataId; //Where it is in data set
  float r,g,b,scale;
  void constructor(PImage imageC,float xC,float yC,float rC, float gC, float bC, float scaleC, int dataIdC){
    img = imageC;
    x = xC;
    y = yC;
    r = rC;
    g = gC;
    b = bC;
    scale = scaleC;
    dataId = dataIdC;
    pushMatrix();
      tint(0,0,0,0);
      
      image(img,x,y);
      w = img.width;
      h = img.height;
    popMatrix();
    
  }
  void drawState(){
    //float h,PImage img,float x,float y,float r, float g, float b,float s
    

  for(float i = 0;i<h;i = i + 10){
    pushMatrix();
    stroke(0);
    translate(0,0,i);    
    tint(r,g,b,255);
    stroke(255);
    image(img,x,y,w*scale,h*scale);
    popMatrix();
  }

  }



}








float camX;

void draw(){
  background(255);
  lights();
  pushMatrix();
  if(mousePressed){translate((width/2)+ (5*(mouseX-height/2)),(height/2)+ (5*(mouseY-height/2)));camX = camX - .1;if(camX==360){camX = 0;} //Whatever whatever dumb useless
  }
  translate(width/2,(height/2)-900,-900);
  rotateY(radians(0));
  rotateX(radians(0));

  /*
  This can be used when all states are properly constructed
  
  
  for(int i = 0;i<allStates.length;i++){
    orderToDrawStates[i].drawState();
  }
  */
  washington.drawState();
  oregon.drawState();
  california.drawState();
  nevada.drawState();
  utah.drawState();
  idaho.drawState();
  popMatrix();
}




int j = 0; //Counter
public state[] getStateOrder(){
  
  state[] stateOrder = new  state[allStates.length];
  Boolean isSorted = false;
  while(!isSorted){
  for(int  i = 0;i<stateOrder.length ;i ++){  //This checks that everything is sorted properly and all that
    if(dataSet[stateOrder[i].dataId]>dataSet[stateOrder[i+1].dataId]){
      isSorted = true;
    
    }else{
      isSorted = false;
    
    }
  
  }
  for(int i = 0; i<allStates.length;i++){  //Goes through each 
    if(allStates[j].dataId > stateOrder[j].dataId){
      stateOrder[j] = allStates[j];
    }
  
  
  }


  j++;
  }
  
  return stateOrder;
}