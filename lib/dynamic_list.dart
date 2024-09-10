import 'package:flutter/material.dart';

import 'model/notification.dart';

class DynamicListViewDemo extends StatefulWidget {
  const DynamicListViewDemo({super.key});

  @override
  State<DynamicListViewDemo> createState() => _DynamicListViewDemoState();
}

class _DynamicListViewDemoState extends State<DynamicListViewDemo> {
  List<NotificationModel> notificationList = [
    NotificationModel(title: 'First Title', description: 'First Description'),
    NotificationModel(title: 'Second Title', description: 'Second Description'),
    NotificationModel(title: 'Third Title', description: 'Third Description'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic List View Demo"),
      ),
      body: ListView.builder(
          itemCount: notificationList.length,
          itemBuilder: (context, i) {
            return ListTile(
              tileColor:
                Colors.white,
              leading: Icon(Icons.notifications),
              title: Text(notificationList[i].title.toString()),
              subtitle: Text(notificationList[i].description.toString()),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          }),
    );
  }
}
