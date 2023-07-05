import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/pages/about_me.dart';
import 'package:surf_flutter_courses_template/pages/activity.dart';
import 'package:surf_flutter_courses_template/pages/experience.dart';




class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        
        children: const [
          AboutMePage(title: "Обо мне"),
          ActivityPage(title: "Увлечения"),
          ExperiencePage(title: "Опыт в разработке"),
        ],
      ),
    );
  }
}