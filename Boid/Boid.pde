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
    //v3 = rule3(b, i);
    b.velocity = b.velocity.add(v1.add(v2));
    if ((b.position.x < 0 && b.velocity.x < 0) || (b.position.x > width && b.velocity.x > 0)) {
      b.velocity = new PVector(b.velocity.x * -1, b.velocity.y);
    }
    if ((b.position.y < 0 && b.velocity.y < 0) || (b.position.y > height && b.velocity.y > 0)) {
      b.velocity = new PVector(b.velocity.x, b.velocity.y * -1);
    }
    //b.velocity = b.velocity.div(10);
    //if (abs(b.velocity.x) > 5 || abs(b.velocity.y) > 5) {
    //  b.velocity = new PVector(b.velocity.x / 5, b.velocity.y / 5);
    //}
    //b.velocity = b.velocity.add(v1.add(v2.add(v3)));
    b.position = b.position.add(b.velocity);
    particles[i] = b;
    fill(b.colour);
    ellipse(b.position.x, b.position.y, 20, 20);
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
void setup() {
  size(3000, 900);
  noStroke();
  initializePositions();
}
void draw() {
  

  background(0);
  drawBoids();
  moveAllBoidsToNewPositions();
  saveFrame("boids-######.png");
}