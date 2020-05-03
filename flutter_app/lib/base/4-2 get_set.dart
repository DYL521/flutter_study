class Point {
  // 每一个实例属性 变量都会有有一个隐藏的get、set方法
  int _x;
  int _y;

  //自定义get、set方法
  int get x => _x; // 返回x xxxx 是方法名哦
  set x(int x) => _x = x;

  //操作符重载,定义+ 的行为
  Point operator +(Point other) {
    var point = new Point();
    point._x = _x + other.x;
    return point;
  }
}

void main() {
  var point =  Point();

  //get
  print(point.x);

  // set
  point.x = 100;

  var p1 =  Point();
  var p2 =  Point();

  p1.x = 100;
  p2.x = 88;

  var p3 = p1 + p2;
  print(p3.x);
}
