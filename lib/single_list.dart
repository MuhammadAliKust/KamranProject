import 'package:flutter/material.dart';

class SingleListViewDemo extends StatefulWidget {
  const SingleListViewDemo({super.key});

  @override
  State<SingleListViewDemo> createState() => _SingleListViewDemoState();
}

class _SingleListViewDemoState extends State<SingleListViewDemo> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Demo"),
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, i) {
            return ListTile(
              onTap: () {
                selectedIndex = i;

                setState(() {});
              },
              tileColor: selectedIndex == i ? Colors.green : Colors.white,
              leading: Icon(Icons.notifications),
              title: Text("Selected Index: $selectedIndex | Index: $i"),
              subtitle: Text("Notification SubTitle"),
              trailing: Icon(Icons.arrow_forward_ios),
            );
          }),
    );
  }
}
