float graphCount = 1.0f;

class Health
{
  void drawGraph()
  {
    float ten = map(15.0f, 0, finalx + finaly, 0, width + height);
    float widthEnd = map(592.5f, 0, finalx, 0, width);
    float h = height / 2.0f + map(22, 0, finaly, 0, height);
    
    stroke(#006600);
    strokeWeight(1.0f);
    
    //fill(0);
    //rect(width / 2.0f, h - (ten * 5.0f), widthEnd - width / 2.0f, (ten * 10.0f));
    
    line(width / 2.0f, h, widthEnd, h);
    
    for (float i = 0; i < 6.0f; i+=1.0f)
    {
      line(width / 2.0f, h - (ten * i), widthEnd, h - (ten * i));
      line(width / 2.0f, h + (ten * i), widthEnd, h + (ten * i));
    }//end for
    
    line(width / 2.0f, h - (ten * 5.0f), width / 2.0f, h + (ten * 5.0f));
    line(widthEnd, h - (ten * 5.0f), widthEnd, h + (ten * 5.0f));
  }//end METHOD drawGraph()
  
  /*
    Draws line that will act as a heart rate monitor
  */
  
  void heartRate(float x1)
  {
    float space = 1.0f;
    float h = height / 2.0f + map(22, 0, finaly, 0, height);
    
    strokeWeight(2.0f);
    
    line (x1 + space * (graphCount - 1.0f), h, x1 + space * graphCount, h);
    graphCount += 1.0f;
    
    if (graphCount > map(592.5f, 0, finalx, 0, width) - x1)
    {
      graphCount = 0.0f;
    }
  }//end heartRate()
}//end CLASS Health