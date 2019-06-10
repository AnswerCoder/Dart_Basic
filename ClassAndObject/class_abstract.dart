/**
 * @Author:Brian
 * @Description:class_abstract
 * @Date:2019/6/10 17:01
 */

void main(){
  var person =new Student();
  person.run();
}
/***************************************
 * 抽象类 使用abstract表示，不能直接被实例化
 * 抽象方法不用abstract修饰，无实现
 * 抽象类可以没有抽象方法
 * 有抽象方法的类一定得声明为抽象类
 ***************************************/
abstract class Person{
  void run();
}
//抽象类可以继承 去实例化子类
class Student extends Person{
  @override
  void run() {
    print("run...");
  }
}