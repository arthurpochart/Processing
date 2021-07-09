float height =600;
float width = 600;
Wave wave1 =new Wave(1,TWO_PI,1);
Wave wave2 =new Wave(0.5,TWO_PI,1);
Wave wave3 =new Wave(random(0,1),random(0,TWO_PI),random(0,TWO_PI));
Wave waves[] = new Wave[3];

class Wave{
  float phase = 0;
  float period = TWO_PI;
  float amp = 1;
  Wave(float amp,float period,float phase){
    this.phase = phase;
    this.amp = amp;
    this.period = period;
  }
  float evaluate(float x){
    float angle = map(x,0,width,0,TWO_PI);
    return map(this.amp*sin(this.phase+angle*TWO_PI/this.period),-1.0,1.0,0,height);
  }
}

//generate a number of random waves

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

    float y=wave1.evaluate(i)+wave2.evaluate(i)-height/2;
    // for(Wave w:waves){
    //   y += w.evaluate(i);
    // }

    fill(236,56,56);
    stroke(236,56,56);
    ellipse(i,y,5,5);
  }


  wave1.phase -= 0.02;
  wave2.phase -= 0.02;
}
