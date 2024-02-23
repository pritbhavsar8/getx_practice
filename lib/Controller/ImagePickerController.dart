import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController
{
  RxString imagepath = "".obs;
  getimage() async{
    final ImagePicker picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if(image != null){
      imagepath.value = image.path.toString();
    }
  }
}
