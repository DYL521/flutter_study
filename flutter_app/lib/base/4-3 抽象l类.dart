abstract class Parent {
  String name;

  //默认构造方法
  Parent(this.name);

  //工厂方法返回Child实例
  factory Parent.test(String name) {
    return new Child(name);
  }

  void printName();
}

// java 不可以多继承
class Child extends Parent {
  Child(String name) : super(name);

  @override // 必须要实现的方法
  void printName() {}
}

void main() {

  var p = Parent.test("kakaka");
  print(p.runtimeType);// 输出实际类型Child
  p.printName();

}
