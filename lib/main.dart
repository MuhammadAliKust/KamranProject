import 'package:flutter/material.dart';
import 'package:kamran_project/list_view_demo.dart';
import 'package:kamran_project/login.dart';
import 'package:kamran_project/page_view_demo.dart';
import 'package:kamran_project/single_list.dart';

import 'image_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: PageViewDemo(),
    );
  }
}
