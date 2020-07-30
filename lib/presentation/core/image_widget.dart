import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'package:path_provider/path_provider.dart';

// Future<File> getImageFileFromAssets(String path) async {
//   final byteData = await rootBundle.load('assets/$path');

//   final file = File('${(await getTemporaryDirectory()).path}/$path');
//   await file.writeAsBytes(byteData.buffer
//       .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

//   return file;
// }

Widget _ifImageNotSet() {
  const _myAvatar = 'my_great_logo.png';

  return Stack(
    children: <Widget>[
      const Center(
        child: CircleAvatar(
          radius: 120.0,
          backgroundColor: Color(0xFF778899),
        ),
      ),
      Center(
        child: Image.asset(
          'assets/$_myAvatar',
          scale: 0.35,
        ),
      ),
    ],
  );
}

Widget _ifImageWasSet(File image) {
  return Container(
    height: 240.0,
    width: 240.0,
    decoration: BoxDecoration(
      color: const Color(0xff7c94b6),
      image: DecorationImage(
        image: ExactAssetImage(image.path),
        fit: BoxFit.cover,
      ),
      border: Border.all(color: Colors.red, width: 5.0),
      borderRadius: const BorderRadius.all(Radius.circular(120.0)),
    ),
  );
}

Widget decideImageView(File image) {
  return image == null ? _ifImageNotSet() : _ifImageWasSet(image);
}
