// 被混入(mixin)的类不能有构造方法！！
class A {
  a(){
    print("我是a的a");
  }
}

class B {
  void b() {}
  a(){
    print("我是b的a");
  }
}

class C with A, B {
  c() {


  }
//  a(){
//    print("我是c的a");
//  }
}

class CC= Object with A,B;

// C 中可以使用A，B的方法，但是不是多继承哈，是吗？
void main() {

  var c = new C();

  c.a(); // 如果自身没有这个方法，先找最后一个类，依次往前找（右往前找）
}
