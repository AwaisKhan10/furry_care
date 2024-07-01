import 'package:furry_care/core/model/review_data.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';

class ReviewModel extends BaseViewModel {
  List<ReviewData> list_review_data = [
    ReviewData(
      id: "1",
      title: "Mansi",
      description:
          "Amazing! Just like the pictureand the seller is super friendly",
      ratings: "4",
    ),
    ReviewData(
      id: "2",
      title: "Mansi",
      description:
          "Amazing! Just like the pictureand the seller is super friendly",
      ratings: "4",
    ),
    ReviewData(
      id: "3",
      title: "Mansi",
      description:
          "Amazing! Just like the pictureand the seller is super friendly",
      ratings: "4",
    )
  ];
}
