import 'package:flutter/material.dart';

import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';

class ErrorShopCard extends StatelessWidget {
  final Shop shop;

  const ErrorShopCard({
    Key key,
    @required this.shop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).errorColor,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            Text(
              'Invalid shop, please contact support',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2
                  .copyWith(fontSize: 18.0),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Details for nerds:',
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
            Text(
              shop.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
