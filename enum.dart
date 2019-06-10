/**
 * @Author:Brian
 * @Description:enum
 * @Date:2019/6/10 18:19
 */

//const spring = 0;
//const summer = 1;
//const autumn = 2;
//const winter = 3;

void main(){
  var currentSeason = Season.summer;

  switch(currentSeason){
    case Season.spring:
      print("Month:1-3");
      break;
    case Season.summer:
      print("Month:4-6");
      break;
    case Season.autumn:
      print("Month:7-9");
      break;
    case Season.winter:
      print("Month:10-12");
      break;
  }
  print(currentSeason.index);
}
/**************************************
 * 枚举是一种有穷序列集的数据类型
 * 使用关键字enum定义一个枚举
 * 常用于代替常量，控制语句等
 **************************************/

/*----------------------------------------------------------------------------------*/

/*************Dart枚举特性**************
 * index从0开始，依次累加
 * 不能指定原始值
 * 不能添加方法
 **************************************/
enum Season{
  spring,
  summer,
  autumn,
  winter
}