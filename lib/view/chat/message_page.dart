import 'package:app1/view/appBar.dart';
import 'package:flutter/material.dart';

import '../widgets/friends.dart';
import '../widgets/recent_chats.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarComponent(title: 'Chat'),
      body: Column(
        children: [
          RecentChats(),
        ],
      ),
    );
  }
}
