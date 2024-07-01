// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:furry_care/core/model/shop_data.dart';
import 'package:furry_care/ui/screens/shop/shop_details/detail_view_model.dart';
import 'package:provider/provider.dart';

class ShopDetailScreen extends StatelessWidget {
  ShopData shopData;
  ShopDetailScreen({required this.shopData});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShopDetailViewModel(),
      child: Consumer<ShopDetailViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: Column(
            children: [
              ///
              /// header
              ///
              Text("Details Scren"),
            ],
          ),
        ),
      ),
    );
  }
}
