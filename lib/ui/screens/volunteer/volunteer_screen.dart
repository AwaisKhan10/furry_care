import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/ui/screens/volunteer/volunteer_view_model.dart';
import 'package:provider/provider.dart';

class VolunteerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VolunteerViewModel(),
      child: Consumer<VolunteerViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: Column(
            children: [
              Text(
                "Volunteer Screen",
                style: style16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
