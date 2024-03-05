import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Controller/example2Controller.dart';

class example2 extends StatefulWidget
{
  const example2({Key? key}) : super(key: key);

  @override
  State<example2> createState() => _example2State();
}

class _example2State extends State<example2>
{
  example2Controlller c = Get.put(example2Controlller());
  var opacity = 0.3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("example2"),
        centerTitle: true,
      ),
      body: Column(
        children: [
         Obx(() => Container(
           height: 50.0,
           width: 50.0,
           color: Colors.orange.withOpacity(c.opacity.value),
         ),),
          Obx(() => Slider(value: c.opacity.value, onChanged: (val){
            print(val);
            c.setopacity(val);
          })),
         Obx(() =>  Row(
           children: [

             Radio(value: "male", groupValue: c.gender.value, onChanged: (val){
               print(val);
               c.handle_radio(val!);
             }),
             Text("Male"),
             Radio(value: "female", groupValue:  c.gender.value, onChanged: (val){
               print(val);
               c.handle_radio(val!);
             }),
             Text("Female"),
           ],
         )),
        Obx(() => DropdownButton(
          value: c.selected.value,
          items: [
            DropdownMenuItem(child: Text("Gujrat"),value: "gujarat",),
            DropdownMenuItem(child: Text("Maharastra"),value: "MH",),
            DropdownMenuItem(child: Text("Uttar Pradesh"),value: "UP",),
          ],
          onChanged: (val){
            print(val);
            c.handle_dropdown(val!);
          },
        )),
         Obx(() =>  Row(
           children: [
             Checkbox(value: c.cb.value, onChanged: (val){
               print(val);
               c.handle_check_box(val!);
             }),
             Text("Accept Term & Policy"),
           ],
         ))

        ],
      ),
    );
  }
}
