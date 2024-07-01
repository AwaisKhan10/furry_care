import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:furry_care/core/constants/colors.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/ui/screens/shop/shop_details/detail_view_model.dart';
import 'package:furry_care/ui/screens/shop/shop_details/details_screen.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class CustomAllProducts extends StatelessWidget {
  const CustomAllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ShopDetailViewModel(),
        child: Consumer<ShopDetailViewModel>(
            builder: (context, model, child) => GridView.builder(
                itemCount: model.list_shop_detail.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    crossAxisCount: 2),
                itemBuilder: ((context, index) => Container(
                      width: 156,
                      height: 189,
                      decoration: BoxDecoration(
                        color: accentColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(ShopDetailScreen(
                                  shopData: model.list_shop_detail[index]));
                            },
                            child: Container(
                              width: 140,
                              height: 117,
                              margin: EdgeInsets.only(top: 10),
                              child: Image.asset(
                                "${model.list_shop_detail[index].imgUrl}",
                                fit: BoxFit.cover,
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: greyColor),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${model.list_shop_detail[index].title}",
                            style: styleNormal14,
                          )
                        ],
                      ),
                    )))));
  }
}
