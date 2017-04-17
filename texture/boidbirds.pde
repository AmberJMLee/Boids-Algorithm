boolean rule1;
boolean rule2;
boolean rule3;
PImage sky;
class Particle {
  PVector position;
  PVector velocity;
  color colour;
  Particle() {
    position = new PVector();
    velocity = new PVector(0.0, 0.0);
  }
  Particle(PVector p, color c) {
    position = p;
    colour = c;
    velocity = new PVector(1, 1);
  }
}
int numberOfParticles = 500;
Particle[] particles = new Particle[numberOfParticles];
void initializePositions() {
  for (int i = 0; i < numberOfParticles; i++) {
    float xvalue = random(0, width);
    float yvalue = random(0, height);
    PVector position = new PVector(xvalue, yvalue);
    color colour = color(random(150, 255), random(150, 255), random(150, 255));
    Particle p = new Particle(position, colour);
    particles[i] = p;
  }
}

void drawBoids() {
  PVector v1, v2, v3;
  for (int i = 0; i < numberOfParticles; i++) {
    Particle b = particles[i];
    v1 = rule1(b, i);
    v2 = rule2(b, i);
    v3 = rule3(b, i);
    if (rule1) {
      b.velocity.add(v1);
      //print("Rule1 ");
    }
    if (rule2) {
      b.velocity.add(v2);
      //print("Rule2 ");
    }
    if (rule3) {
      b.velocity.add(v3);
      //print("Rule3 ");
    }
    println();
    if ((b.position.x < -3000 && b.velocity.x < 0) || (b.position.x > 3000 && b.velocity.x > 0)) {
      b.velocity = new PVector(b.velocity.x * -1, b.velocity.y);
    }
    if ((b.position.y < -3000 && b.velocity.y < 0) || (b.position.y > 3000 && b.velocity.y > 0)) {
      b.velocity = new PVector(b.velocity.x, b.velocity.y * -1);
    }
    //b.velocity = b.velocity.div(10);
    //if (abs(b.velocity.x) > 5 || abs(b.velocity.y) > 5) {
    //  b.velocity = new PVector(b.velocity.x / 5, b.velocity.y / 5);
    //}
    //b.velocity = b.velocity.add(v1.add(v2.add(v3)));
    b.position = b.position.add(b.velocity);
    particles[i] = b;
    float red = slider1.getValueF();
    float green = slider2.getValueF();
    float blue = slider3.getValueF();
    fill(color(red, green, blue));
    //ellipse(b.position.x, b.position.y, 20, 20);
    owl(int(b.position.x), int(b.position.y), red, green, blue, 1);
  }
}
//Rule 1: Boids try to fly towards the center of the mass of neighboring boids
PVector rule1(Particle b, int i) {
  PVector pcj = new PVector(0.0, 0, 0);
  for (int j = 0; j < numberOfParticles; j++) {
    if (i != j) {
      pcj = pcj.add(particles[j].position);
    }
  }
  pcj = pcj.div(numberOfParticles - 1);
  return (pcj.sub(b.position)).div(30);
}
//Rule 2: Boids try to keep a small distance away from other objects (including other Boids)
PVector rule2(Particle b, int i) {
  PVector c = new PVector(0.0, 0.0);
  for (int j = 0; j < numberOfParticles; j++) {
    if (i != j) {
      if (abs(b.position.dist(particles[j].position)) < 100) {
        c = c.sub(b.position.sub(particles[j].position));
        //c = c.sub(particles[j].position.sub(b.position));
      }
      /*
      PVector northcorner = new PVector(b.position.x, 0);
      PVector westcorner = new PVector(0, b.position.y);
      PVector eastcorner = new PVector(width, b.position.y);
      PVector southcorner = new PVector(b.position.x, height);
      if (abs(b.position.dist(northcorner)) < 50) {
        //c = c.sub(b.position.sub(northcorner));
        c = c.sub(northcorner.sub(b.position));
      }
      if (abs(b.position.dist(westcorner)) < 50) {
        //c = c.sub(b.position.sub(westcorner));
        c = c.sub(westcorner.sub(b.position));
      }
      if (abs(b.position.dist(eastcorner)) < 50) {
        //c = c.sub(b.position.sub(eastcorner));
        c = c.sub(eastcorner.sub(b.position));
      }
      if (abs(b.position.dist(southcorner)) < 50) {
        //c = c.sub(b.position.sub(southcorner));
        c = c.sub(southcorner.sub(b.position));
      }
      */
    }
  }
  return c;
}
//Boids try to match velocity with nearby Boids
PVector rule3(Particle b, int i) {
  PVector pvj = new PVector(0.0, 0.0);
  for (int j = 0; j < numberOfParticles; j++) {
    if (i != j) {
      pvj = pvj.add(particles[j].velocity);
    }
  }
  pvj = pvj.div(numberOfParticles - 1);
  return (pvj.sub(particles[i].velocity)).div(10);
}
void moveAllBoidsToNewPositions() {
}


void owl(int x, int y, float red, float green, float blue, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  translate (110, 110);
  stroke(red, green, blue);
  strokeWeight(70);
  line(0, -60, 0, -65);
  line(0, -55, 10, -65);
  //line(-10, -35, 0, -45);
  noStroke();
  fill(255);
  ellipse(-17.5, -65, 35, 35);
  ellipse(17.5, -65, 35, 35);
  //arc(0, -65, 70, 70, 0, PI);
  fill(51, 51, 30);
  //fill(0);
  ellipse(-14, -65, 8, 8);
  ellipse(14, -65, 8, 8);
  quad(0, -50, 4, -51, 0, -44, -4, -51);
  popMatrix();
}