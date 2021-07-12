float height =600;
float width = 600;
Wave wave1 =new Wave(0.5,TWO_PI,0);
Wave wave2 =new Wave(0.5,TWO_PI,0);
Wave wave3 =new Wave(1,TWO_PI,0);
Wave waves[] = new Wave[3];


void setup(){

  size(600,600);
  background(0);

  for(int i=0;i<2;i++){
    waves[i] = new Wave(random(0,0.2),random(0,TWO_PI),random(2));
  }
}


void draw(){

  background(50);
  stroke(255);
  translate(0,height/2);
  line(0,0,width,0);
  float y = 0;

  for(float i=0;i<width;i+=5){
    for(int w=0;w<waves.length-1;w++){
      y += waves[w].evaluate(i);
    }

    fill(236,56,56);
    stroke(236,56,56);
    ellipse(i,y,5,5);
  }
  for(int w=0;w<waves.length-1;w++){
    waves[w].update();
  }

}
