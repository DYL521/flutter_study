class Test {
  /**
   * 可调用的类
   *
   */
  void call() {
    print("xxxxxxxxx");
  }
}

void main() {
  Test test = Test();

  test(); // 调用的是call方法，快速调用 -> 有点扯淡 shift！
}
