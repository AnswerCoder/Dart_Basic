/**
 * @Author:Brian
 * @Description:person_class
 * @Date:2019/6/10 16:03
 */
class Person{
  String name;
  int age;
  String birthday;

  bool get isAdult => age > 18;

  void run(){
    print("Person run...");
  }
}