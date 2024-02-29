import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: const Text("GetX Tutorial",style: TextStyle(
          letterSpacing: 1,
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.black45,
        ),),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Card(
              color:  Colors.grey.shade200,
              child: ListTile(
                 title: const Text("Dialog Box"),
                subtitle: const Text("How Are You"),
                onTap: (){
                   Get.defaultDialog(
                     titlePadding: EdgeInsets.only(top: 20),
                     contentPadding: EdgeInsets.only(top: 20),
                     title: 'Delete Chat',
                     content: Text('Are you sure you want to delete this chat?'),
                    // textConfirm: 'Ok',//using getx
                    // textCancel: 'Cancel'// using getx
                     confirm: TextButton(onPressed: (){
                       Navigator.pop(context);
                     }, child: Text("Ok")),
                     cancel: TextButton(onPressed: (){
                       Get.back();// Usin getx closed
                     }, child: Text("Cancel"))
                   );
                },
              ),
            ),
            Card(
              color:  Colors.grey.shade200,
              child: ListTile(
                title: const Text("Bottom sheet"),
                subtitle: const Text("How Are You"),
                onTap: (){
                 Get.bottomSheet(
                   Container(
                     decoration: BoxDecoration(
                       color: Colors.red,
                       borderRadius: BorderRadius.circular(20)
                     ),
                     child:  Column(
                       children: [
                         ListTile(
                           leading: Icon(CupertinoIcons.light_min),
                           title: Text("Light Mode"),
                           onTap: (){
                             Get.changeTheme(ThemeData.light());
                           },
                         ),
                         ListTile(
                           leading: Icon(CupertinoIcons.light_max),
                           title: Text("dark Mode"),
                           onTap: (){
                             Get.changeTheme(ThemeData.dark());
                           },
                         ),
                       ],
                     ),
                   ),
                 );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(CupertinoIcons.add,size: 30,color: Colors.blue,),
          onPressed: (){
        Get.snackbar(
          icon: Icon(CupertinoIcons.add,color: Colors.black,),
          'Ayush soni',
          'Subscreibe to my channal',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          margin: const EdgeInsets.only(bottom: 100),
          duration: const Duration(seconds: 10),
          onTap: (snack) {
            print('Hello Ayush soni');

          },

        );
      }),
    );
  }
}
