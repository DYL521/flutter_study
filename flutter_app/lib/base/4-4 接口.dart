

// 与java 不同 Dart没有interface关键字，Dart每个类都隐式定义包含所有实例成员的接口
// 并且这个类实现类这个接口。如果你想创建A来支持B的方法，而不想继承B的时间，则类A应该实现B的接口

class A{
  void a(){
  }
}

// 实现A接口
class AA implements A{
  @override
  void a() {
    // TODO: implement a
  }

}
// 继承
class A2 extends A{

  //
}


// Dart中类也可以是接口！！
void mian(){



}