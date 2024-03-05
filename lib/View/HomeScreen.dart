import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Controller/HomeController.dart';

class HomeScrren extends StatefulWidget
{
  const HomeScrren({Key? key}) : super(key: key);

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren>
{
  HomeController c = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          c.increment_counter();
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("HomeScrren"),
        centerTitle: true,
      ),
      body:Obx(() =>  Center(
        child: Text(c.count.toString()),))
    );
  }
}
