class Wave{
  float phase = 0;
  float period = TWO_PI;
  float amp = 1;
  float speed = 0.02;
  Wave(float amp,float period,float phase){
    this.phase = phase;
    this.amp = amp;
    this.period = period;
  }
  Wave(float amp,float period){
    this.phase = phase;
    this.amp = amp;
    this.period = period;
  }
  float evaluate(float x){
    float angle = map(x,0,width,0,TWO_PI);
    return this.amp*sin(this.phase+angle*TWO_PI/this.period)*height/4;
    // float angle = x*300.0/PI;
    // return (this.amp*(1+sin(this.phase+angle*TWO_PI/this.period)))*height/4;
  }

  void update(){
    this.phase += speed;
  }

}
