import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'package:firebase_ddd_tutorial/application/core/image_picker/image_picker_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_form/worker_form_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_image_handler/worker_image_handler_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/helper_functions.dart';

const _myAvatar = 'my_great_logo.png';

Future<File> getImageFileFromAssets(String path) async {
  final byteData = await rootBundle.load('assets/$path');

  final file = File('${(await getTemporaryDirectory()).path}/$path');
  await file.writeAsBytes(byteData.buffer
      .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

  return file;
}

Widget _ifImageNotSet([num percent]) {
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

Widget _ifImageWasSet(File image, [num percent]) {
  final color = percent == 0 ? Colors.red : Colors.green;
  return Container(
    height: 240.0,
    width: 240.0,
    decoration: BoxDecoration(
      color: const Color(0xff7c94b6),
      image: DecorationImage(
        image: ExactAssetImage(image.path),
        fit: BoxFit.cover,
      ),
      border: Border.all(color: color, width: 5.0),
      borderRadius: const BorderRadius.all(Radius.circular(120.0)),
    ),
  );
}

Widget decideImageView(File image, [num percent]) {
  return image == null
      ? _ifImageNotSet(percent)
      : _ifImageWasSet(image, percent);
}

class ImageWidget extends StatelessWidget {
  final num percent;
  final File image;
  const ImageWidget({
    Key key,
    this.percent,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final imagePickerBloc = context.read<ImagePickerBloc>();
        imagePickerBloc.add(const ImagePickerEvent.initialized());
        final workerImageHandlerBloc = context.read<WorkerImageHandlerBloc>();
        _showChoiseDialog(context, imagePickerBloc, workerImageHandlerBloc);
      },
      child: decideImageView(image, percent),
    );
  }

  Future<void> _showChoiseDialog(
      BuildContext context,
      ImagePickerBloc imagePickerBloc,
      WorkerImageHandlerBloc workerImageHandlerBloc) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Choose the Foto source',
                style: textStyle(fontSize: 24.0, color: Colors.black),
                textAlign: TextAlign.center),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => imagePickerBloc.add(
                        const ImagePickerEvent.selectImageFromGalleryStarted()),
                    child: Text(
                      'Galery',
                      style: textStyle(fontSize: 21.0, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    onTap: () => imagePickerBloc.add(
                        const ImagePickerEvent.getImageFromCameraStarted()),
                    child: Text('Camera',
                        style: textStyle(fontSize: 21.0, color: Colors.black),
                        textAlign: TextAlign.center),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  GestureDetector(
                    onTap: () => workerImageHandlerBloc.add(
                        WorkerImageHandlerEvent.imageDeleted(context
                            .read<WorkerFormBloc>()
                            .state
                            .worker
                            .imageUrl
                            .getOrCrash())),
                    child: Text('Delete',
                        style: textStyle(fontSize: 21.0, color: Colors.black),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
