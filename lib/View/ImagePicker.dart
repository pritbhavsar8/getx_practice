import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/Controller/ImagePickerController.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({Key? key}) : super(key: key);

  @override
  State<ImagePicker> createState() => ImagePickerState();
}

class ImagePickerState extends State<ImagePicker>
{
  ImagePickerController c = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImagePicker"),
      ),
      body: Obx(() => Column(
        children: [
          CircleAvatar(
            backgroundImage: c.imagepath.isNotEmpty? FileImage(File(c.imagepath.toString())): null
          ),
          ElevatedButton(onPressed: (){
            c.getimage();
          }, child: Text("pick image"))

        ],
      ),)
    );
  }
}
