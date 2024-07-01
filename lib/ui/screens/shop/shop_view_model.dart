import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/model/shop_data.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';

class ShopViewModel extends BaseViewModel {
  List<ShopData> list_shopdata = [
    ShopData(
      id: "1",
      imgUrl: AppAssets.img01,
      title: "Pet food bowls",
    ),
    ShopData(
      id: "2",
      imgUrl: AppAssets.img02,
      title: "Pet magazines",
    ),
    ShopData(
      id: "3",
      imgUrl: AppAssets.img03,
      title: "Dog leash with",
    ),
  ];

  ///
  ///shopview model
  ///
}
