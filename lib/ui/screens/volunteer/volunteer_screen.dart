import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/text_style.dart';
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
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Upcoming Events',
                        style: style14,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (BuildContext context, int index) {
                            return EventCard();
                          },
                        ),
                      )
                    ],
                  ),
                ),
                const Text('data')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
