import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/model/users_data.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';

class HomeViewModel extends BaseViewModel {
  List<UsersData> userdataList = [
    UsersData(
        profileImgUrl: AppAssets.user1,
        name: 'Cinnamon',
        imgUrl: AppAssets.img1),
    UsersData(
        profileImgUrl: AppAssets.user1,
        name: 'Cinnamon',
        imgUrl: AppAssets.img1),
    UsersData(
        profileImgUrl: AppAssets.user2,
        name: 'Rainbow',
        imgUrl: AppAssets.img2),
  ];
}
