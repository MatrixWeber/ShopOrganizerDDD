import 'package:auto_route/auto_route.dart';
import 'package:firebase_ddd_tutorial/application/shops/shop_actor/shop_actor_bloc.dart';
import 'package:firebase_ddd_tutorial/application/worker/worker_image_handler/worker_image_handler_bloc.dart';
import 'package:firebase_ddd_tutorial/domain/core/decoration.dart';
import 'package:firebase_ddd_tutorial/presentation/core/deletion_dialog.dart';
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
    void delete() {
      final shopActorBloc = context.read<ShopActorBloc>();
      shopActorBloc.add(
        ShopActorEvent.deleted(shop),
      );
      final imageHandlerBloc = context.read<WorkerImageHandlerBloc>();
      imageHandlerBloc.add(
        WorkerImageHandlerEvent.imageDeleted(
          shop.imageUrl.getOrCrash(),
        ),
      );
    }

    return Slidable(
      actionPane: const SlidableDrawerActionPane(),
      actionExtentRatio: 0.15,
      secondaryActions: [
        IconSlideAction(
          caption: 'Delete',
          icon: Icons.delete,
          color: Colors.red,
          onTap: () => DeletionDialog.show(
              context: context,
              title: 'shop',
              content: shop.name.getOrCrash(),
              onDelete: delete),
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
                    diameter: 160,
                    imageUrl: shop.imageUrl.getOrCrash(),
                    imagePath: "assets/images/shop-placeholder.jpg"),
                Container(
                  constraints:
                      const BoxConstraints.expand(height: 200, width: 200),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Name: ${shop.name.getOrCrash()}',
                        style: const TextStyle(fontSize: 16.0),
                      ),
                      Text(
                        'Phone: ${shop.phoneNumber.getOrCrash()}',
                        style: const TextStyle(fontSize: 16.0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
