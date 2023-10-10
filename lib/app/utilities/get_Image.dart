import 'package:image_picker/image_picker.dart';

final ImagePicker _picker = ImagePicker();
Future<String> getImage() async {
  try {
    XFile? image =
        await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);

    print(image!.path);

    return image.path;
  } catch (e) {
    return '';
  }
}
