import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/model/shop_data.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';

class ShopDetailViewModel extends BaseViewModel {
  List<ShopData> list_shop_detail = [
    ShopData(
        id: "1",
        imgUrl: AppAssets.imgp2,
        title: "Dog premium food",
        description:
            "Cat Beds for Indoor Cats, Pet Bed for Puppy and Kitty, Extra Soft & Machine Washable with Anti-Slip & Water-Resistant Oxford Bottom ",
        price: "799",
        rating: "4.62",
        subrating: "142"),
    ShopData(
        id: "2",
        imgUrl: AppAssets.imgp2,
        title: "Cat bed",
        price: "799",
        rating: "4.62",
        subrating: "142",
        description:
            "Cat Beds for Indoor Cats, Pet Bed for Puppy and Kitty, Extra Soft & Machine Washable with Anti-Slip & Water-Resistant Oxford Bottom "),
    ShopData(
        id: "3",
        imgUrl: AppAssets.imgp2,
        title: "Dog premium food",
        price: "799",
        rating: "4.62",
        subrating: "142",
        description:
            "Cat Beds for Indoor Cats, Pet Bed for Puppy and Kitty, Extra Soft & Machine Washable with Anti-Slip & Water-Resistant Oxford Bottom "),
    ShopData(
        id: "4",
        imgUrl: AppAssets.imgp2,
        title: "Cat bed",
        price: "799",
        rating: "4.62",
        subrating: "142",
        description:
            "Cat Beds for Indoor Cats, Pet Bed for Puppy and Kitty, Extra Soft & Machine Washable with Anti-Slip & Water-Resistant Oxford Bottom "),
  ];
}
