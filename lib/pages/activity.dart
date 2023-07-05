import 'package:flutter/material.dart';

class ActivityPage extends StatelessWidget {
  final String title;
  const ActivityPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text(title,style: const TextStyle(fontSize: 20.0, fontFamily: 'RubikMonoOne'),),
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                      style: TextStyle(fontSize: 15.0, fontFamily: 'RubikMonoOne'),
                    """
  Вне мира разработки я также увлекаюсь несколькими интересными вещами. Одним из моих главных увлечений является музыка. Я играю на нескольких инструментах, включая гитару и фортепиано. Это отличный способ расслабиться и выразить свои эмоции.
  Я также увлекаюсь чтением книг. Я предпочитаю научно-популярные и фантастические произведения, которые расширяют мое воображение и позволяют мне погрузиться в увлекательные истории.
  В свободное время я люблю заниматься спортом, особенно футболом. Спорт помогает мне поддерживать физическую форму и дает мне энергию для работы и обучения.
                """,
                textAlign: TextAlign.justify,
                  ),
                   Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("Листай дальше", style: TextStyle(fontSize: 13.0, fontFamily: 'RubikMonoOne')), Icon(Icons.arrow_forward_ios_rounded)],
          )
                ],
              ),
            )
          ],
        ));
  }
}
