import 'dart:io';

import 'package:firebase_ddd_tutorial/domain/image/image_picker/i_image_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IImagePicker)
class ImagePickerImplementation implements IImagePicker {
  @override
  Future<File> getImageFromCamera() async {
    final pickedFile = await ImagePicker().getImage(source: ImageSource.camera);
    return File(pickedFile.path);
  }

  @override
  Future<File> getImageFromGalery() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    return File(pickedFile.path);
  }
}
