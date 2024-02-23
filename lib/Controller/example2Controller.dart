import 'package:get/get.dart';

class example2Controlller extends GetxController
{
  RxDouble opacity = 0.3.obs;
  setopacity(double value){
    opacity.value = value;
  }
}