import 'package:flutter/material.dart';
import 'package:kamran_project/bottom_nav_bar.dart';
import 'package:kamran_project/dialog_box.dart';
import 'package:kamran_project/dynamic_list.dart';
import 'package:kamran_project/list_view_demo.dart';
import 'package:kamran_project/login.dart';
import 'package:kamran_project/page_view_demo.dart';
import 'package:kamran_project/single_list.dart';
import 'package:kamran_project/tabbar_demo.dart';

import 'image_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: DialogBoxView(),
    );
  }
}
