main(List<String> args) {
  // 1.明确的声明
  String name = "why";

  // 2.类型推导(var/final/const)
  // 类型推导的方式虽然没有明确的指定变量的类型, 但是变量是有自己的明确的类型
  // 2.1.var声明变量
  var age = 20;
  // age = "abc";
  age = 30;

  // 2.2.final声明常量
  final height = 1.88;
  // height = 2.00;

  // 2.3.const声明常量
  const address = "广州市";
  // address = "北京市";

  // 2.4.final和const的区别
  // const必须赋值 常量值(编译期间需要有一个确定的值)
  // final可以通过计算/函数获取一个值(运行期间来确定一个值)
  // const date1 = DateTime.now(); 写法错误
  final date2 = DateTime.now();

  // final用的更多一点
  // p1和p2是不是同一个对象
  // final p1 = Person("why");
  // final p2 = Person("why");
  // print(identical(p1, p2));//false,final声明的是不同对象.(identical函数是对比两个对象是否相同)

  // const p1 =const Person("why");
  // const p2 =const Person("why");
  // const p3 =const Person("lilei");
  // 在Dart2.0之后, const可以省略
  const p1 = Person("why");
  const p2 = Person("why");
  const p3 = Person("lilei");

  print(identical(p1, p2)); //true ,const 声明的是同一个对象
  print(identical(p2, p3)); //false

  // dynamic/Object
}

class Person {
  final String name;
  const Person(this.name);
}
