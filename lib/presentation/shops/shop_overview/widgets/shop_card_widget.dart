import 'package:firebase_ddd_tutorial/application/shops/shop_actor/shop_actor_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';

import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';

class ShopCard extends StatelessWidget {
  final Shop shop;

  const ShopCard({Key key, @required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[500],
      child: InkWell(
        onTap: () {
          // TODO Implement navigation
        },
        onLongPress: () {
          final shopActorBloc = context.bloc<ShopActorBloc>();
          _showDeletionDialog(context, shopActorBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                shop.name.getOrCrash(),
                style: const TextStyle(fontSize: 18.0),
              ),
              Text(
                shop.phoneNumber.getOrCrash(),
                style: const TextStyle(fontSize: 18.0),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(BuildContext context, ShopActorBloc shopActorBloc) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Selected shop'),
            content: Text(
              shop.name.getOrCrash(),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            actions: [
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('CANCEL'),
              ),
              FlatButton(
                onPressed: () {
                  shopActorBloc.add(
                    ShopActorEvent.deleted(shop),
                  );
                  Navigator.pop(context);
                },
                child: const Text('DELETE'),
              ),
            ],
          );
        });
  }
}
