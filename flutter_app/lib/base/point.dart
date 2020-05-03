// 构造方法
class Point {
  int x;
  int y;

  int _z;

  // 1、普通
  Point(this.x, this.y, this._z); // 下划线开始的变量，表示这个变量是私有的，类同理！

  // 2、命名参数
//  Point({int x, int y}) {}

  //3、命名构造方法-> 不允许重载的限制
//但是我们不能重载构造方法,只能通过下面这个方法： 命名构造方法
  Point.Cool(this.y);

  //4、方法初始化列表，初始化类中的属性值
  Point.fromMap(Map map)
      : _z = map["x"],
        y = map["y"] {} // 可以不写方法体

}

class View {
  View(int context, int attr);

  //Dart写法
  View.A(int context) : this(context, 0);

//java 的写法
//  View(int context){
//    this(context,0)
//  }
}

//5、常量构造方法
class ImmutablePoint {
  final int x; //属性final
  final int y;

  const ImmutablePoint(this.x, this.y); // 构造const
}

//使用
void main() {
  // 使用new来创建常量构造方法的对象跟普通的对象没有区别,两个对象
  var p1 = new ImmutablePoint(1, 1);
  var p2 = new ImmutablePoint(1, 1);

  //使用const来创建对象，表示这个对想是一个编译期常量对象（，如果值是一样的，那么是同一个对象）
  var p3 = const ImmutablePoint(1, 1);
  var p4 = const ImmutablePoint(1, 1); // 同一个对象，共享对象，真TM牛逼～
  var p5 = const ImmutablePoint(1, 33); //参数不一样，那么生成也是不同的对象！！
  print(p3 == p4);
  print(p3 == p5);
}

//6、工厂构造函数

class Manager {
  int i;

  // 方法1,构造方法 --> Dart推荐使用
  factory Manager.get() {
//     this.i;
    return new Manager();
  }

  // 方法2，静态方法
  static Manager get2() {
//     this.i;
    return new Manager();
  }

  //方法1、方法2几乎相同，他们都不可以使用this
  // 但是工厂构造方法，必须返回对象，静态方法不一定，java是这样！

  Manager();
}

class Child2 extends Manager {}

/*********构造方法私有-单利模式********/

class Manager2 {

  static Manager2 _instance;

  factory Manager2.getInstance() {
    if (_instance == null) { // Dart是单线程的，不用加锁～～
      _instance = new Manager2._newInstance();
    }
  }

  Manager2._newInstance(); //私有的构造方法，原来的构造方法就不在l；跟java一样的；_newInstance是私有的
}
