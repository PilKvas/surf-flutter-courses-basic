import 'package:flutter/material.dart';

import 'package:surf_flutter_courses_template/widgets/gesture_master.dart';

void main() {
  runApp(const GestureMasterApp());
}

class GestureMasterApp extends StatelessWidget {
  const GestureMasterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GestureMasterWidget(),
      ),
    );
  }
}
