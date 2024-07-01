import 'package:flutter/material.dart';
import 'package:furry_care/core/constants/text_style.dart';
import 'package:furry_care/ui/screens/ask/chat_view_model.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatScreenViewModel(),
      child: Consumer<ChatScreenViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: Column(
            children: [
              Text(
                "ChatScreen Screen",
                style: style16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
