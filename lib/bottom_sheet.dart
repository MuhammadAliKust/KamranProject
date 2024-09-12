import 'package:flutter/material.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet Demo"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,

                    /// To get screen full width and it will give you dynamic width based on screen width
                    child: Column(
                      children: [
                        Text("This is bottom sheet"
                            "")
                      ],
                    ),
                  );
                });
          },
          child: Text("Show Bottom Sheet"),
        ),
      ),
    );
  }
}
