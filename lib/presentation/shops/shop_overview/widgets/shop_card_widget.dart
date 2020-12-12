import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_actor/shop_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/decoration.dart';
import 'package:firebase_ddd_tutorial/presentation/core/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:firebase_ddd_tutorial/domain/shops/shop.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../../routes/router.gr.dart';

class ShopCard extends StatelessWidget {
  final Shop shop;

  const ShopCard({Key key, @required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.15,
      secondaryActions: [
        IconSlideAction(
          caption: 'Delete',
          icon: Icons.delete,
          color: Colors.red,
          onTap: () {
            final shopActorBloc = context.read<ShopActorBloc>();
            _showDeletionDialog(context, shopActorBloc);
          },
        ),
      ],
      child: Card(
        color: primaryColor,
        child: InkWell(
          onTap: () {
            ExtendedNavigator.of(context).pushWorkerOverviewPage(shop: shop);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                createImageContainer(
                    imagePath: "assets/images/shop-placeholder.jpg"),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Name: ${shop.name.getOrCrash()}',
                      style: const TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      'Phone: ${shop.phoneNumber.getOrCrash()}',
                      style: const TextStyle(fontSize: 20.0),
                    )
                  ],
                ),
              ],
            ),
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
          title: const Text(
            'Delete shop:',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
          content: Text(
            shop.name.getOrCrash(),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.red,
            ),
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
              child: const Text(
                'DELETE',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
