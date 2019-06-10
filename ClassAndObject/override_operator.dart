/**
 * @Author:Brian
 * @Description:override_operator 覆写操作符
 * @Date:2019/6/10 18:04
 */
void main(){
  var person1 = new Person(18);
  var person2 = new Person(20);
  print(person1 > person2);
  print(person1['age']);
  print(person1 == person2);
}

class Person{
  int age;
  Person(this.age);

  /*********覆写">"*********/
  bool operator >(Person person){
    return this.age > person.age;
  }
  /*********覆写"[]"*********/
  int operator [](String str){
    if("age" == str){
      return age;
    }
    return 0;
  }
  /*********覆写"=="*********/
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Person &&
              runtimeType == other.runtimeType &&
              age == other.age;

  @override
  int get hashCode => age.hashCode;



}
