import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';

class Event {
  final String title;
  final String address;
  final String imgurl;
  final DateTime time;

  Event(this.title, this.address, this.imgurl, this.time);
}

class VolunteerViewModel extends BaseViewModel {
  List<Event> _events = [];

  List<Event> get events => _events;

  VolunteerViewModel() {
    fetchEvents();
  }

  void fetchEvents() {
    _events = [
      Event(
          'Dog park meet up',
          'Plot No. 176 ,Shop 3, Lakshmi Darshan, Sector 21, Kamothe,Khandeshhwar, Panel',
          AppAssets.img3,
          DateTime.now()),
      Event(
          'Dog park meet up',
          'Plot No. 176 ,Shop 3, Lakshmi Darshan, Sector 21, Kamothe,Khandeshhwar, Panel',
          AppAssets.img3,
          DateTime.now()),
      Event(
          'Dog park meet up',
          'Plot No. 176 ,Shop 3, Lakshmi Darshan, Sector 21, Kamothe,Khandeshhwar, Panel',
          AppAssets.img3,
          DateTime.now()),
      Event(
          'Dog park meet up',
          'Plot No. 176 ,Shop 3, Lakshmi Darshan, Sector 21, Kamothe,Khandeshhwar, Panel',
          AppAssets.img3,
          DateTime.now()),
      Event(
          'Dog park meet up',
          'Plot No. 176 ,Shop 3, Lakshmi Darshan, Sector 21, Kamothe,Khandeshhwar, Panel',
          AppAssets.img3,
          DateTime.now()),
    ];

    notifyListeners();
  }
}
