/**
 * @Author:Brian
 * @Description:constructor_extends
 * @Date:2019/6/10 16:29
 */
void main(){
  var student = new Student("Bob","Male");
  print(student.name);
}

class Person{
  String name;

  Person(this.name);  //this constructor function no name but have parameter

  Person.withName(this.name);   //this constructor function have name and parameter
}
/********************************************************
 * 子类的构造方法默认会调用父类的无名无参数的构造方法
 * 如果父类没有无名无参构造方法，则需要显示调用父类构造方法
 * 在构造方法参数后使用 “:” 显示调用父类构造方法
 ********************************************************/
/*--------------------------------------------------------------------------------------------------*/
/********************************************************
 * 构造方法执行顺序:
 *  父类的构造方法在子类构造方法开始执行的位置调用
 *  如果有初始化列表，初始化列表会在父类构造方法之前执行
 ********************************************************/
class Student extends Person{
  int age;
  final String gender;
  Student(String name,String g) : gender = g , super.withName(name);
}