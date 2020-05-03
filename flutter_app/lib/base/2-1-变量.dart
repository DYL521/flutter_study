

void main(){

  // dart 中一切皆对象;
  String j;
  int i;

  print("Hello Flutter");

  //2、Object 是任意类型
 Object i2;

 // 3、Dart 是强类型的语言 - 但是js中var定义之后，中间可以改成任意类型
  var k1 =""; //k1
//  k1=100； //这样是不可以的！因为在声明变量的时候，就确定他是字符串类型

  //但是： 这样是可以的
  var jj; // 这个时候jj是object类类型，所有后边可以更改成其他类型
  jj="LLL";
  jj = 100;

  // var 在声明变量赋值的那时起，就决定了他是什么数据类型；如果没有赋值，那么这个变量就是Object类型

  //3、dynamic 动态 - 指的是不是编译的数据类型，是运行的时候决定是什么数据类型
  dynamic z = "Lance22";// 字符串类型
  z = 100;


  //4、final、const不能改变
  // final 是运行时常量
  // const 是编译时常量，效率更高
  // const 不能用final的变量来赋值，因为final是运行时确定的变量值；但是反之是可以！
  final int i44=1;
  const int jj123=3;

//  const Z=i；
  const zz = jj123+1;
  final xxx11 = zz+1; // 编译时的变量，可以赋值给运行时的变量 const 赋值给final





}


