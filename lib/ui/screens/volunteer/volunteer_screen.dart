import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/core/other/screen_utils.dart';
import 'package:furry_care/ui/custom_widgets/custom_appbar.dart';
import 'package:furry_care/ui/screens/volunteer/volunteer_view_model.dart';
import 'package:furry_care/ui/screens/volunteer/widgets/event_card.dart';
import 'package:provider/provider.dart';

class VolunteerScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  VolunteerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VolunteerViewModel(),
      child: Consumer<VolunteerViewModel>(
        builder: (context, model, child) => DefaultTabController(
          length: 2,
          child: Scaffold(
            key: _scaffoldkey,
            appBar: const PreferredSize(
                preferredSize: Size.fromHeight(70),
                child: const CustomAppbar()),
            body: TabBarView(
              children: [
                const Text('data'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upcoming Events',
                        style: style14,
                      ),
                      SizedBox(height: 16.h),
                      Expanded(
                        child: ListView.separated(
                            itemCount: model.events.length,
                            itemBuilder: (BuildContext context, int index) {
                              final event = model.events[index];

                              return EventCard(event: event);
                            },
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(
                                      height: 16,
                                    )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
