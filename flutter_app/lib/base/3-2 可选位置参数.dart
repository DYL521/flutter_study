/**
 * 可选位置参数
 */

void fun([int i, int j]) {
  // 表示参数是一个列表,位置很关键
  print("大打打");
}

void fun2([int i = 0, int j]) {
  //如果想给j传入参数，那么一定保证i有值
  // 表示参数是一个列表,位置很关键
  print("大打打: " + i.toString());
}

/**
 * 可选命名参数,都可以设置默认参数
 */
void fun3({int i = 888, int j}) {}

void main() {
  fun(2, 1);

  fun2();

  fun3(i: 100, j: 888);
}

/**
 *  Dart不要写大量的重载方法
 **/
