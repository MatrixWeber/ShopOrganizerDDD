import 'package:firebase_ddd_tutorial/domain/shops/shop_failure.dart';
import 'package:flutter/material.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final ShopFailure failure;

  const CriticalFailureDisplay({
    Key key,
    @required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '😱',
            style: TextStyle(fontSize: 150),
          ),
          Text(
            failure.maybeMap(
                orElse: () => 'Unexpected error. \nPlease contact support.',
                insufficientPermissions: (_) => 'Insufficient permission'),
            style: const TextStyle(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: () {
                print('Sending email!');
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.mail),
                  SizedBox(width: 4),
                  Text('I NEED HELP')
                ],
              ))
        ],
      ),
    );
  }
}
