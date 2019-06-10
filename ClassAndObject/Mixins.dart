/**
 * @Author:Brian
 * @Description:Mixins
 * @Date:2019/6/10 17:28
 */
void main(){
  var d = new D();
  d.a();      // print C.a()  [extends A with B , C]  C在后面所以优先调用C中的同名方法
}

class A{
  void a(){
    print("A.a()...");
  }
}

class B{
  void a(){
    print("B.a()...");
  }
  void b(){
    print("B.b()...");
  }
}

class C{
  void a(){
    print("C.a()...");
  }
  void b(){
    print("C.b()...");
  }
  void c(){
    print("C.c()...");
  }
}
/************************************************
 * Mixins类似于多继承，是在多继承中重用一个类代码的方式
 * 作为Mixin的类不能有显示声明构造方法
 * 作为Mixin的类只能继承自Object
 * 使用关键字连接一个或多个Mixin
 ************************************************/
class D extends A with B , C{

}