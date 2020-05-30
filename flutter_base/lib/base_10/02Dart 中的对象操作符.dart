/*
Dart中的对象操作符:

    ?     条件运算符 （了解）
    as    类型转换
    is    类型判断
    ..    级联操作 （连缀）  (记住)
*/

class Person {
  String name;
  num age;

  Person(this.name, this.age);

  void printInfo() {
    print("${this.name}---${this.age}");
  }
}

main() {
  // ？ 条件判断
  Person p;
  p?.printInfo(); //  p? 表示如果对象平为空，就不执行方法！！

  Person p2 = new Person('张三', 20);
  p2?.printInfo();

  // is 判断数据类型
  Person p3 = new Person('张三', 20);
  if (p3 is Person) {
    p3.name = "李四";
  }
  p3.printInfo();
  print(p3 is Object);

  var p1;
  p1 = '';
  p1 = new Person('张三1', 20);

  // p1.printInfo(); // 旧版本是不行的，但是现在可以了
  (p1 as Person).printInfo(); // as 把p1强制转换成Person对象

  //  Person p1=new Person('张三1', 20);
  //  p1.printInfo();

  //  p1.name='张三222';
  //  p1.age=40;
  //  p1.printInfo();



  // 级连操作..
  Person p11 = new Person('张三1', 20);
  p11.printInfo();
  p11
    ..name = "李四"
    ..age = 99
    ..printInfo(); // 赋值，调用直接操作！！ 真牛逼！
}
