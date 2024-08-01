import 'package:image_picker/image_picker.dart';

Future pickImageFromGallery() async {
  try {
    print("object");
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    return pickedImage!.path;
  } catch (e) {
    print("Error while selecting the image \n ${e.toString()}");
    return;
  }
}
