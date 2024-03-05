import 'package:get/get.dart';

class example2Controlller extends GetxController
{
  RxDouble opacity = 0.3.obs;
  setopacity(double value){
    opacity.value = value;
  }

  RxString gender = "male".obs;
  handle_radio(String value){
    gender.value = value;
  }
  RxString selected = "gujarat".obs;
  handle_dropdown(String value){
    selected.value = value;
  }
  RxBool cb = false.obs;
  handle_check_box(bool value){
    cb.value = value;
  }
}