
//1、Function 没有指定参数类型
void fun(Function f) {}

//2、定义一个类型：F类型，这个F类型就是一个方法，接受两个int参数，返回void
typedef void F(int i, int j);
void fun2(F f) {
  f(1,1);
//  f(1); //出错，typedef 定义不符合
}
//3、这样定义很麻烦啊～～ 不推荐这么写
void fun3(void f1(int i ,int j)){

}

// 方法
void main() {
  //方法都是对象，可以赋值给Function
  Function f = fun;
  f(() {}); //匿名方法

//1、使用 typedef 定义的方法
  fun2((int i,int j){
  });
}

// 使用的场景
// java中，使用接口作为回调
class OnClickListener{
  void onClick(){}
}

class Button{
  void setOnClickListener(OnClickListener listener){

  }
}

/**
 * Dart中直接可以使用回调方法
**/

typedef void onClick();
class Button2{
  void setOnClickListener(onClick listener){

  }
}