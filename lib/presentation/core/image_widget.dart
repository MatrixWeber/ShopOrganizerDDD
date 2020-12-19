import 'dart:io';

import 'package:firebase_ddd_tutorial/application/core/image/image_handler/image_handler_bloc.dart';
import 'package:firebase_ddd_tutorial/application/core/image/image_picker/image_picker_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_form/worker_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/helper_functions.dart';

const _myAvatar = 'images/placeholder-portrait.jpg';

Widget _ifImageNotSet([num percent]) {
  return createImageContainer(imagePath: 'assets/$_myAvatar');
}

Widget _ifImageWasSet(File image, [num percent]) {
  final color = percent == 0 ? Colors.red : Colors.green;
  return Container(
    height: 240.0,
    width: 240.0,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: ExactAssetImage(image.path),
      ),
      borderRadius: BorderRadius.circular(200),
      border: Border.all(color: color, width: 5.0),
    ),
  );
}

Widget decideImageView(File image, [num percent]) {
  return image == null
      ? _ifImageNotSet(percent)
      : _ifImageWasSet(image, percent);
}

Widget createImageContainer(
    {@required String imagePath, String imageUrl, double diameter = 200}) {
  return Container(
    width: diameter,
    height: diameter,
    decoration: BoxDecoration(
        // image: DecorationImage(
        //     image: ExactAssetImage(imagePath), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(diameter / 2)),
    child: imageUrl == null
        ? Image(
            image: ExactAssetImage(imagePath),
          )
        : FadeInImage.assetNetwork(
            placeholder: imagePath,
            image: imageUrl,
          ),
  );
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
        final workerImageHandlerBloc = context.read<ImageHandlerBloc>();
        _showChoiseDialog(context, imagePickerBloc, workerImageHandlerBloc);
      },
      child: decideImageView(image, percent),
    );
  }

  Future<void> _showChoiseDialog(
      BuildContext context,
      ImagePickerBloc imagePickerBloc,
      ImageHandlerBloc workerImageHandlerBloc) {
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
                        ImageHandlerEvent.imageDeleted(context
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
