import 'dart:io';

abstract class IImagePicker {
  Future<File> getImageFromGalery();
  Future<File> getImageFromCamera();
}
