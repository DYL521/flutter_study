// 异常

void test() {
  throw new Exception("不给你调用");
}

void test1(int i) {
  if (i == 1) {
    throw "1";
  } else if (i == 2) {
    throw 100;
  } else {
    throw test;
  }
}

void main() {
  try {
    test(); //主动捕获异常
  } catch (e, s) {
    //e 动态参数

    print(e.runtimeType); //_Exception 异常描述
    print(s.runtimeType); //_StackTrace
    print(s); // 调用异常栈信息
  }

  /**
   *   根据不同的异常执行不同的逻辑
   */
  try {
    test(); //主动捕获异常
  } on Exception catch (e, s) {
    print("抛出～～");
  } on int catch (e, s) {
    print("抛出～～");
  } on String catch (e, s) {
    print("抛出～～");
  }

  try {
    test1(1);
  } on int catch (e) {

  } on Function catch (e) { // 抛出方法，然后可以执行这个方法
    e();
  }
}
