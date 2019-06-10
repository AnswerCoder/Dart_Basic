/**
 * @Author:Brian
 * @Description:calculated_property
 * @Date:2019/6/10 11:10
 */
void main(){
  var rect = new Rectangle();
  rect.width = 10;
  rect.height = 20;
  print(rect.area);

  rect.area = 310;
  print(rect.height);
}

class   Rectangle{
  num height,width;

  num get area => height * width;
  set area(value){
    height = value / 20;
  }
}
