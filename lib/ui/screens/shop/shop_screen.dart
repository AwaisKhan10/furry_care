import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/ui/screens/shop/shop_view_model.dart';
import 'package:provider/provider.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ShopViewModel(),
      child: Consumer<ShopViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: Column(
            children: [
              Text(
                "Shop Screen",
                style: style16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
