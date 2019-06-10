/**
 * @Author:Brian
 * @Description:ClassExtends
 * @Date:2019/6/10 16:09
 */
import 'person_class.dart';

void main(){
  var student = new Student();
  student.study();

  student.name = "Bob";
  student.age = 18;
  print(student.isAdult);
  student.run();

  Person person =new Student();  //子类赋给父类后，不能访问子类的方法和属性。若要访问，需判断一下
  if(person is Student){
    person.study();
  }
}

class Student extends Person{

  void study(){
    print("Student study...");
  }

  @override
  bool get isAdult => age >=18;

  @override
  void run() {
    print("Student run...");
  }
}