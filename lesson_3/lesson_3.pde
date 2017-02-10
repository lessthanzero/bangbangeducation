/*
Based on example from Sound Library
*/

import processing.sound.*;

AudioDevice device;
SoundFile[] file;
 
int numsounds = 5;
color[] cs = { 
          color(255, 0, 0), 
          color(128, 1, 26), 
          color(100, 120, 100), 
          color(56, 71, 28), 
          color(50, 20, 10) 
        };
        
color fillColor = color(255, 255, 255);

void setup( ){
  size(640, 360);
  
  device = new AudioDevice(this, 48000, 32);
  file = new SoundFile[numsounds];
  
  for (int i = 0; i < numsounds; i++){
    file[i] = new SoundFile(this, (i+1) + ".aif");
  }
  
}

void draw() {
  background(0);
  fill( fillColor );
  ellipse(width/2, height/2, 100, 100);
}

void keyPressed() {
  
  if (key == '1') {
    fillColor = cs[0];
  } else if (key == '2') {
    fillColor = cs[1];
  } else if (key == '3') {
    fillColor = cs[2];
  } else if (key == '4') {
    fillColor = cs[3];
  } else if (key == '5') {
    fillColor = cs[4];
  } else {
    fillColor = color(255, 255, 255);
  }
  
  switch (key) {
    
    case '1':
      file[0].play(0.5, 1.0);
      break;
  
    case '2':
      file[1].play(0.5, 1.0);
      break;
    
    case '3':
      file[2].play(0.5, 1.0);
      break;
    
    case '4':
      file[3].play(0.5, 1.0);
      break;
    
    case '5':
      file[4].play(0.5, 1.0);
      break;
    
  }
  
}