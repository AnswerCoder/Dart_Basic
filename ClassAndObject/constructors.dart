/**
 * @Author:Brian
 * @Description:constructors
 * @Date:2019/6/10 11:34
 */
void main(){
  var person = new Person("Bob",19,"male");
  if(person.gender == "male"){
    print("Mr " + person.name + " who is " + person.age.toString() + " years old is working");
  }else if(person.gender == "fmale"){
    print("Miss " + person.name + " who is " + person.age.toString() + " years old is working");
  }

  var personSen =new Person.withSign("Ted", "Fmale");
  print(personSen.name + " is " + personSen.gender);
}

class Person{
  String name;
  int age;

  final String gender;

  Person(this.name,this.age,this.gender);

  //if you want more constructors.you can use this way : className.Function
  Person.withSign(String name,this.gender){
    this.name = name;
  }
}