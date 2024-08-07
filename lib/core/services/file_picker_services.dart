// ignore_for_file: depend_on_referenced_packages, no_leading_underscores_for_local_identifiers

import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:heic_to_jpg/heic_to_jpg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;

class FilePickerService {
  File? selectedImage;
  final _imagePicker = ImagePicker();

  Future<File?> pickImage() async {
    return await pickImageWithoutCompression();
  }

  Future<File?> pickImageWithCompression() async {
    File? selectedImage;
    final image50 = await _imagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);
    final image100 = await _imagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 100);
    if (image50 != null) selectedImage = File(image50.path);

    debugPrint('Image50 Size: ${await image50?.length()}');
    debugPrint('Image100 Size: ${await image100?.length()}');

    return selectedImage;
  }

  pickImageWithoutCompression() async {
    File? selectedImage;
    final _filePicker = FilePicker.platform;
    FilePickerResult? result = await _filePicker.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );

    if (result != null) {
      selectedImage = File(result.paths.first!);
      final extension = p.extension(selectedImage.path);
      debugPrint('@FilePcikerService.pickImage ==> Extension: $extension');
      if (extension == '.heic') {
        String? jpegPath = await HeicToJpg.convert(selectedImage.path);
        if (jpegPath != null) selectedImage = File(jpegPath);
      }
      // final dir = path_prvoider.getTemporaryDirectory();
      // final newPath = '$dir/test.jpg';
      // final compressedImage = await _compressImageFile(selectedImage, newPath);
      // if (compressedImage != null) {
      //   selectedImage = compressedImage;
      // }
    }
    return selectedImage;
  }

  // Future<File?> _compressImageFile(File file, String targetPath) async {
  //   debugPrint(
  //       '@compressImageFile => Size before compression: ${await file.length()}');
  //   var result = await FlutterImageCompress.compressAndGetFile(
  //     file.absolute.path,
  //     targetPath,
  //     quality: 70,
  //   );

  //   if (result != null) {
  //     print('File compressed successfully');
  //   } else {
  //     print('Compressed file path is null');
  //   }

  //   debugPrint(
  //       '@compressImageFile => Size after compression: ${await result?.length()}');
  //   return result;
  // }
}
