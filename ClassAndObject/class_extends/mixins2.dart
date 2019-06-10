/**
 * @Author:Brian
 * @Description:mixins2
 * @Date:2019/6/10 17:45
 */

void main(){
  var car = new Car();
  var bus = new Bus();
  car.work("car");
  bus.work("bus");
}

abstract class Engine{
  void work(String type);
}

class OilEngine implements Engine{
  @override
  void work(String type){
    print("$type Work with oil...");
  }
}

class ElectricEngine implements Engine{
  @override
  void work(String type) {
    print("$type Work with Electric...");
  }
}

class Tyre{
  String name;

  void run(){}
}

class Car = Tyre with ElectricEngine; //this is equals to "class Car extends Tyre with ElectricEngine{}"

class Bus = Tyre with OilEngine;