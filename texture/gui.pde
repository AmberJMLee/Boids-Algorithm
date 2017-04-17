import java.util.*;
import g4p_controls.*;
import ddf.minim.*;
/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:CommandStation:878663:
  appc.background(230);
} //_CODE_:CommandStation:878663:

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:slider1:880326:
  //println("RedSlider - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:slider1:880326:

public void slider2_change1(GSlider source, GEvent event) { //_CODE_:slider2:676351:
  //println("GreenSlider - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:slider2:676351:

public void slider3_change1(GSlider source, GEvent event) { //_CODE_:slider3:601239:
  //println("BlueSlider - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:slider3:601239:

public void slider4_change1(GSlider source, GEvent event) { //_CODE_:slider4:726602:
  //println("HyperDrive - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:slider4:726602:

public void checkbox1_clicked1(GCheckbox source, GEvent event) { //_CODE_:Free:886603:
  //println("Free - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:Free:886603:

public void checkbox1_clicked2(GCheckbox source, GEvent event) { //_CODE_:checkbox1:344148:
  //println("checkbox1 - GCheckbox >> GEvent." + event + " @ " + millis());
} //_CODE_:checkbox1:344148:

public void knob1_turn1(GKnob source, GEvent event) { //_CODE_:knob1:220799:
  //println("knob1 - GKnob >> GEvent." + event + " @ " + millis());
} //_CODE_:knob1:220799:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:217059:
  //println("button1 - GButton >> GEvent." + event + " @ " + millis());
   day = true;
   dusk = false;
   night = false;
   cartoon = false;
   button1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
   button2.setLocalColorScheme(GCScheme.RED_SCHEME);
   button3.setLocalColorScheme(GCScheme.RED_SCHEME);
   button7.setLocalColorScheme(GCScheme.RED_SCHEME);
   player.pause();
   player = minim.loadFile("daysong.mp3", 2048);
   player.loop();
} //_CODE_:button1:217059:

public void button1_click2(GButton source, GEvent event) { //_CODE_:button1:217059:
  //println("button1 - GButton >> GEvent." + event + " @ " + millis());
  day = false;
  dusk = true;
  night = false;
  cartoon = false;
  button1.setLocalColorScheme(GCScheme.RED_SCHEME);
  button2.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button3.setLocalColorScheme(GCScheme.RED_SCHEME);
  button7.setLocalColorScheme(GCScheme.RED_SCHEME);
  player.pause();
  player = minim.loadFile("dusksong.mp3", 2048);
  player.loop();
} //_CODE_:button1:217059:
public void button1_click3(GButton source, GEvent event) { //_CODE_:button1:217059:
  //println("button1 - GButton >> GEvent." + event + " @ " + millis());
  day = false;
  dusk = false;
  night = true;
  cartoon = false;
  button1.setLocalColorScheme(GCScheme.RED_SCHEME);
  button2.setLocalColorScheme(GCScheme.RED_SCHEME);
  button3.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button7.setLocalColorScheme(GCScheme.RED_SCHEME);
    player.pause();
  player = minim.loadFile("nightsong.mp3", 2048);
  player.loop();
} //_CODE_:button1:217059:

public void button1_click7(GButton source, GEvent event) {
  day = false;
  dusk = false;
  night = false;
  cartoon = true;
  button1.setLocalColorScheme(GCScheme.RED_SCHEME);
  button2.setLocalColorScheme(GCScheme.RED_SCHEME);
  button3.setLocalColorScheme(GCScheme.RED_SCHEME);
  button7.setLocalColorScheme(GCScheme.GREEN_SCHEME);
    player.pause();
  player = minim.loadFile("cartoonsong.mp3", 2048);
  player.loop();
}
public void button1_click4(GButton source, GEvent event) { //_CODE_:button1:217059:
  if(rule1){
   rule1 = false;
   button4.setLocalColorScheme(GCScheme.RED_SCHEME);
  } else {
   rule1 = true;
   button4.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  }
  initializePositions();
}

public void button1_click5(GButton source, GEvent event) { //_CODE_:button1:217059:
    if(rule2){
   rule2 = false;
   button5.setLocalColorScheme(GCScheme.RED_SCHEME);
  } else {
   rule2 = true;
   button5.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  }
  initializePositions();
} 


public void button1_click6(GButton source, GEvent event) { //_CODE_:button1:217059:
    if(rule3){
   rule3 = false;
   button6.setLocalColorScheme(GCScheme.RED_SCHEME);
  } else {
   rule3 = true;
   button6.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  }
  initializePositions();
} 


public void slider2d1_change6(GSlider2D source, GEvent event) { //_CODE_:slider2d1:788558:
  //println("slider2d1 - GSlider2D >> GEvent." + event + " @ " + millis());
  //println(slider2d1.getValueXF() + "," + slider2d1.getValueYF());
} //_CODE_:slider2d1:788558:

public void imgButton1_click1(GImageButton source, GEvent event) { //_CODE_:imgButton1:355855:
  //println("imgButton1 - GImageButton >> GEvent." + event + " @ " + millis());
} //_CODE_:imgButton1:355855:

public void slider5_change1(GSlider source, GEvent event) { //_CODE_:slider5:431280:
  //println("slider5 - GSlider >> GEvent." + event + " @ " + millis());
} //_CODE_:slider5:431280:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  surface.setTitle("Sketch Window");
  CommandStation = GWindow.getWindow(this, "Boids Algorithm", 380, 700, 500, 170, JAVA2D);
  CommandStation.noLoop();
  CommandStation.addDrawHandler(this, "win_draw1");
  slider1 = new GSlider(CommandStation, 10, 10, 200, 50, 10.0);
  slider1.setShowValue(true);
  slider1.setShowLimits(true);
  slider1.setLimits(255.0, 0.0, 255.0);
  slider1.setNbrTicks(51);
  slider1.setNumberFormat(G4P.DECIMAL, 2);
  slider1.setLocalColorScheme(GCScheme.RED_SCHEME);
  slider1.setOpaque(false);
  slider1.addEventHandler(this, "slider1_change1");
  slider2 = new GSlider(CommandStation, 10, 60, 200, 50, 10.0);
  slider2.setShowValue(true);
  slider2.setShowLimits(true);
  slider2.setLimits(255.0, 0.0, 255.0);
  slider2.setNbrTicks(51);
  slider2.setNumberFormat(G4P.DECIMAL, 2);
  slider2.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  slider2.setOpaque(false);
  slider2.addEventHandler(this, "slider2_change1");
  slider3 = new GSlider(CommandStation, 10, 110, 200, 50, 10.0);
  slider3.setShowValue(true);
  slider3.setShowLimits(true);
  slider3.setLimits(255.0, 0.0, 255.0);
  slider3.setNbrTicks(51);
  slider3.setNumberFormat(G4P.DECIMAL, 2);
  slider3.setOpaque(false);
  slider3.addEventHandler(this, "slider3_change1");
  RLabel = new GLabel(CommandStation, 200, 10, 80, 20);
  RLabel.setText("Red");
  RLabel.setTextBold();
  RLabel.setLocalColorScheme(GCScheme.RED_SCHEME);
  RLabel.setOpaque(false);
  GLelab = new GLabel(CommandStation, 200, 60, 80, 20);
  GLelab.setText("Green");
  GLelab.setTextBold();
  GLelab.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  GLelab.setOpaque(false);
  BLabel = new GLabel(CommandStation, 200, 110, 80, 20);
  BLabel.setText("Blue");
  BLabel.setTextBold();
  BLabel.setOpaque(false);
  
  Free = new GCheckbox(CommandStation, 450, 220, 100, 30);
  Free.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  Free.setText("Daytime");
  Free.setTextBold();
  Free.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  Free.setOpaque(false);
  Free.addEventHandler(this, "checkbox1_clicked1");
  Free.setSelected(true);
  checkbox1 = new GCheckbox(CommandStation, 423, 308, 120, 20);
  checkbox1.setTextAlign(GAlign.LEFT, GAlign.MIDDLE);
  checkbox1.setText("checkbox text");
  checkbox1.setOpaque(false);
  checkbox1.addEventHandler(this, "checkbox1_clicked2");
  label1 = new GLabel(CommandStation, 250, 10, 110, 30);
  label1.setText("Color of Birds");
  label1.setTextBold();
  label1.setLocalColorScheme(GCScheme.RED_SCHEME);
  label1.setOpaque(false);
  button1 = new GButton(CommandStation, 250, 30, 80, 30);
  button1.setText("Day");
  button1.setTextBold();
  button1.setLocalColorScheme(GCScheme.RED_SCHEME);
  button1.addEventHandler(this, "button1_click1");
  button2 = new GButton(CommandStation, 250, 60, 80, 30);
  button2.setText("Dusk");
  button2.setTextBold();
  button2.setLocalColorScheme(GCScheme.RED_SCHEME);
  button2.addEventHandler(this, "button1_click2");
  button3 = new GButton(CommandStation, 250, 90, 80, 30);
  button3.setText("Night");
  button3.setTextBold();
  button3.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button3.addEventHandler(this, "button1_click3");  
  button7 = new GButton(CommandStation, 250, 120, 80, 30);
  button7.setText("CARTOON!");
  button7.setTextBold();
  button7.setLocalColorScheme(GCScheme.RED_SCHEME);
  button7.addEventHandler(this, "button1_click7");
  
  label2 = new GLabel(CommandStation, 400, 10, 110, 30);
  label2.setText("Rules");
  label2.setTextBold();
  label2.setLocalColorScheme(GCScheme.RED_SCHEME);
  label2.setOpaque(false);
  button4 = new GButton(CommandStation, 400, 30, 80, 30);
  button4.setText("Rule 1");
  button4.setTextBold();
  button4.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button4.addEventHandler(this, "button1_click4");
  button5 = new GButton(CommandStation, 400, 60, 80, 30);
  button5.setText("Rule 2");
  button5.setTextBold();
  button5.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button5.addEventHandler(this, "button1_click5");
  button6 = new GButton(CommandStation, 400, 90, 80, 30);
  button6.setText("Rule 3");
  button6.setTextBold();
  button6.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  button6.addEventHandler(this, "button1_click6");
  CommandStation.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow CommandStation;
GSlider slider1; 
GSlider slider2; 
GSlider slider3; 
GLabel RLabel; 
GLabel GLelab; 
GLabel BLabel; 
GSlider slider4; 
GLabel label1; 
GLabel label2;
GCheckbox Free; 
GCheckbox checkbox1; 
GKnob knob1; 
GButton button1;
GButton button2;
GButton button3;
GButton button4;
GButton button5;
GButton button6;
GButton button7;
GSlider2D slider2d1; 
GImageButton imgButton1; 
GSlider slider5; 