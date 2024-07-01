import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/custom_all_products.dart';

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
          body: ListView(children: [
            _header(),

            ///
            ///special offer
            ///
            text_method("Special Offers"),

            ///
            ///best seller products
            ///
            text_method("Best Seller Products"),

            ///
            ///list view data
            ///
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 112,
                child: ListView.builder(
                    itemCount: model.list_shopdata.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return best_seller_products(model, index);
                    }),
              ),
            ),

            ///
            ///all products
            ///
            text_method("All products"),

            ///
            ///grid view
            ///
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomAllProducts(),
            )),
          ]),
        ),
      ),
    );
  }

  Stack best_seller_products(ShopViewModel model, int index) {
    return Stack(
      children: [
        Container(
          width: 99,
          height: 94,
          //width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: greyColor, borderRadius: BorderRadius.circular(12)),
          child: Image.asset("${model.list_shopdata[index].imgUrl}"),
        ),
        Positioned(
          bottom: 10,
          left: 11,
          child: Container(
            padding: EdgeInsets.all(2.5),
            color: accentColor,
            child: Text(
              "${model.list_shopdata[index].title}",
              style: style12,
            ),
          ),
        )
      ],
    );
  }

  Padding text_method(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 21),
      child: Text(title, style: style14),
    );
  }
}

_header() {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
    width: double.infinity,
    height: 117.h,
    decoration: BoxDecoration(color: accentColor, boxShadow: [
      BoxShadow(
          color: blackColor.withOpacity(0.25),
          offset: const Offset(0, 4),
          spreadRadius: 0,
          blurRadius: 4)
    ]),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Rishyanth",
              style: style14,
            ),
            Text(
              "Mumbai",
              style: style14,
            )
          ],
        ),
        Image.asset(
          AppAssets.notifications,
          scale: 4,
        ),
      ],
    ),
  );
}
