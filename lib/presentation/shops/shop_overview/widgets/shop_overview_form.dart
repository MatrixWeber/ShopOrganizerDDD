import 'package:firebase_ddd_tutorial/application/shops/shop_watcher/shop_watcher_bloc.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_overview/widgets/critical_failure_display_widget.dart';
import 'package:firebase_ddd_tutorial/presentation/shops/shop_overview/widgets/shop_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'error_shop_card_widget.dart';

class ShopOverviewForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShopWatcherBloc, ShopWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (state) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final shop = state.shops[index];
                if (shop.failureOption.isSome()) {
                  return ErrorShopCard(shop: shop);
                } else {
                  return ShopCard(shop: shop);
                }
              },
              itemCount: state.shops.size,
            );
          },
          loadFailure: (state) {
            return CriticalFailureDisplay(failure: state.shopFailure);
          },
        );
      },
    );
  }
}
