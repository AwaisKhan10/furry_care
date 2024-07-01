import 'package:furry_care/core/constants/app_assets.dart';
import 'package:furry_care/core/view_model/base_view_model.dart';

import '../../../core/model/event_model.dart';

class EventViewModel extends BaseViewModel {
  List<Event> _events = [];

  List<Event> get events => _events;

  EventViewModel() {
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
