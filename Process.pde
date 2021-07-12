float height =600;
float width = 600;
Wave wave1 =new Wave(1,TWO_PI,0);
Wave wave2 =new Wave(0.333,TWO_PI,0);
Wave wave3 =new Wave(2,TWO_PI,0);


void setup(){
  size(600,600);
  background(0);

  // for(int i=0;i<2;i++){
  //   waves[i] = new Wave(random(0,10),random(0,TWO_PI),random(0,TWO_PI));
  // }


}

void draw(){
  background(50);
  stroke(255);

  for(float i=0;i<width;i+=5){

    float y=(wave1.evaluate(i)+wave2.evaluate(i)+wave3.evaluate(i));
    // for(Wave w:waves){
    //   y += w.evaluate(i);
    // }

    fill(236,56,56);
    stroke(236,56,56);
    ellipse(i,y,5,5);
  }


  wave1.phase += 0.002;
  wave2.phase += 0.002;
  wave3.phase += 0.002;
}
