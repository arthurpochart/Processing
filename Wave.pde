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
    // float angle = map(x,0,width,0,TWO_PI);
    // return map(this.amp*sin(this.phase+angle*TWO_PI/this.period),-1.0,1.0,0,height);
    float angle = x*300.0/PI;
    return (this.amp*(1+sin(this.phase+angle*TWO_PI/this.period)))*150.0;
  }
}
