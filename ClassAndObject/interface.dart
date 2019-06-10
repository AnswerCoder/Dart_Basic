/**
 * @Author:Brian
 * @Description:interface
 * @Date:2019/6/10 17:13
 */
void main(){
  var student = new Student();
  student.run();
}
//类也可作为借口
//class Person{
//  String name;
//  int get age => 18;
//
//  void run(){
//    print("Person run...");
//  }
//}
abstract class Person{
  String name;
  int get age => 18;
  void run();
}
/*****************************************************
 * 类和接口是统一的，类就是接口
 * 每个类都隐式的定义了一个包含所有实例成员的接口
 * 如果是复用已有类的实现，使用继承(extends)
 * 如果只是使用已有类的外在行为，使用接口(implements)
 *****************************************************/
class Student implements Person{
  @override
  String name;

  @override
  int get age => null;

  @override
  void run() {
    print("run...");
  }
}