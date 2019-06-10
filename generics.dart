/**
 * @Author:Brian
 * @Description:generics
 * @Date:2019/6/10 18:36
 */
void main(){
  var list = new List<String>();    //限定list里只能存String类型的数据
  list.add("hello");
  print(list);

  var utils = new Utils<int>();
  utils.put(52);
  print(utils.element);

  var tools = new Tools();
  tools.put<String>("Dart");
}

/***************************************************************************
 * Dart中类型是可选的，可使用泛型限定类型 ，不指定类型的话 默认是dynamic类型
 * 使用泛型能有效的减少代码的重复
 *
 * ************泛型的使用************
 * *类的泛型
 * *方法的泛型
 * ********************************
 ***************************************************************************/
/*************类的泛型*************/
class Utils<T>{
  T element;
  void put(T element){
    this.element = element;
  }
}
/*************方法的泛型*************/
class Tools{
  void put<T>(T element){
    print(element);
  }
}