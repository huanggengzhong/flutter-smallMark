// import "dart:io";

// main(List<String> args) {
//   String getNetworkData() {
//     sleep(Duration(seconds: 3));
//     return "network data";
//   }

//   print("main function start");
//   print(getNetworkData());
//   print("main function end");
//   /**
//    * main function start
//    * 三秒后依次执行
// network data
// main function end
//    */
// }

// import 'dart:io';
// main(List<String> args) {

// //  String getStr(){
// //    sleep(Duration(seconds:5));
// //    return "我已经等待了3秒";
// //  }

// String getStr(){
//   sleep(Duration(seconds: 5));
//   return "5秒";
// }
//  print(1);
//  print(getStr());
//  print(3);

// }


// import "dart:io";

// main(List<String> args) {
//   print("main function start");
//   print(getNetworkData());
//   print("main function end");
// }

// Future<String> getNetworkData() {
//   return Future<String>(() {
//     sleep(Duration(seconds: 5));
//     print(222);
//     return "马上执行了";
//   });
// }

// import 'dart:io';

/**
 * main function start
Instance of 'Future<String>'
main function end
5秒后再执行下面
222
 * 
 */

// 拿到结果
// main(List<String> args) {
//   Future<String> getNetWorkData(){
//     return Future<String> ((){
//       sleep(Duration(seconds: 5));
//       return "等待了5秒";
//     });
//   }
  
//  print(1);
//  var future =getNetWorkData();
//  print('$future,future');
//  future.then((v){
//    print('$v,v');
//  });

//  print(3);

// }
/**
 * 
 * 1
Instance of 'Future<String>',future
3
等待了5秒,v//这里拿到了结果
 */

// 异常捕获

// import "dart:io";

// main(List<String> args) {
//   print("main function start");
//   var future = getNetworkData();
//   future.then((value) {
//     print(value);
//   }).catchError((error) { // 捕获出现异常时的情况
//     print(error);
//   });
//   print(future);
//   print("main function end");
// }

// Future<String> getNetworkData() {
//   return Future<String>(() {
//     sleep(Duration(seconds: 3));
//     // 不再返回结果，而是出现异常
//     // return "network data";
//     // throw Exception("网络请求出现错误");
//     throw Exception("网络异常");
//   });
// }

//上面改进 使用Future链式调用

// import "dart:io";
// main(List<String> args) {
//   Future<String> getNetWorkData(){
//     return Future<String>((){
//       sleep(Duration(seconds:5));
//       // 抛出异常
//       return "网络异常1";
//     });
//   }
//   print("begin");
//   getNetWorkData().then((res1){
//     print(res1);
//     return "网络异常2";
//   }).then((res2){
//     print(res2);
//     return "网络异常3";
//   }).then((res3){
//     print(res3);
//   });
//   print("end");

  /**
   * 
   * begin
   * end
   * 5秒后一次性输出
网络异常1
网络异常2
网络异常3
   */

// }

// Future value直接赋值api


// main(List<String> args) {
//   print("start");
//   Future.value("hahaha").then((v){
//     print(v);
//   });
//   print("end");
//   /**一次性打印下面:hahaha是放入异步队列了,所以会最后执行
//    * start
// end
// hahaha
//    */
// }

Future delayed延迟函数api


// main(List<String> args) {
//   print("start");
//   Future.delayed(Duration(seconds:5),(){
//     return "5秒后执行";
//   }).then((value){
//     print(value);
//   });
//   print("end");
//   /**
//    * start
// end
// 5秒后输出:
// 5秒后执行
//    */
// }
