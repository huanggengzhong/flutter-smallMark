// main(List<String> args) {
//   final time=DateTime.now();
//   print(time);
//   sleep(Duration(seconds: 5));
//   print(time);
// }



// class Person {
//   const Person();
// }

// main(List<String> args) {
//   final a = const Person();
//   final b = const Person();
//   print(identical(a, b)); // true

//   final m = Person();
//   final n = Person();
//   print(identical(m, n)); // false
// }

main(List<String> args) {
  // var lettersSet={1,2,3,4};
  // print('${lettersSet}');
  // print(lettersSet.runtimeType);//set
  // Map<String,Object> infoMap={'height':1.66,'address':"北京市"};
  // print(infoMap);

  // var infoMap1 = {'name': 'why', 'age': 18};
  // print('键值对集合:${infoMap1.entries}');//(MapEntry(name: why), MapEntry(age: 18)),打印键值对集合
  
// 命名可选参数的必须
printInfo3(String name, {int age, double height,  String address}) {
  print('name=$name age=$age height=$height address=$address');
};
// printInfo3('why', height: 1.88,address: "aa");
}
