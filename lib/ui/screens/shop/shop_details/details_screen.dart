// ignore_for_file: use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/model/shop_data.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/buttons/custom_button.dart';
import 'package:furry_care/ui/screens/shop/shop_details/detail_view_model.dart';
import 'package:furry_care/ui/screens/shop/shop_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
          backgroundColor: whiteColor,
          //backgroundColor: accentColor,

          ///
          /// Start Body
          ///
          body: ListView(
            children: [
              ///
              /// header
              ///
              Center(
                child: Stack(
                  children: [
                    GestureDetector(
                        onTap: () => Get.to(ShopScreen()),
                        child: Icon(Icons.arrow_back)),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12)),
                      child: Image.asset(
                        "${shopData.imgUrl}",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),

              ///
              ///container with different color from scafoled
              ///
              Container(
                padding: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                    color: accentColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("In Stock",
                              style: style12.copyWith(
                                color: borderColor,
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Shop ratings",
                                style: styleNormal14,
                              ),
                              Text("kha")
                            ],
                          )
                        ],
                      ),
                    ),

                    ///
                    ///title
                    ///
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("${shopData.title}", style: style16b),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${shopData.description}",
                            style: styleNormal14.copyWith(color: borderColor),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text("₹", style: style16b),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${shopData.price}",
                                style: style16b,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          ///
                          ///Buy now button
                          ///
                          Container(
                            decoration: BoxDecoration(
                                color: borderColor,
                                borderRadius: BorderRadius.circular(15.r)),
                            child: CustomButton(
                              onTap: () {},
                              text: "Buy Now",
                              textColor: whiteColor,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          ///
                          ///add to cart button
                          ///

                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                border: Border.all(color: borderColor)),
                            child: CustomButton(
                              onTap: () {},
                              text: "Add to cart",
                              textColor: borderColor,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
