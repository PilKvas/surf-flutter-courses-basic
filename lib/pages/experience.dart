import 'package:flutter/material.dart';


class ExperiencePage extends StatelessWidget {
  final String title;
  const ExperiencePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title,style: const TextStyle(fontSize: 20.0, fontFamily: 'RubikBubbles'),),
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                      style: TextStyle(fontSize: 17.0, fontFamily: 'RubikBubbles'),
                    """
    Хотя я только начинающий разработчик Flutter, у меня уже есть определенный опыт в области разработки программного обеспечения. Я ранее работал над несколькими проектами, используя другие технологии, такие как Java и Python.
    Во время учебы и самостоятельного изучения я разрабатывал различные мобильные приложения и веб-сайты. Этот опыт помог мне ознакомиться с основами разработки, а также научиться работать с базами данных, API и другими важными инструментами.
    Теперь я сосредоточен на развитии своих навыков в разработке Flutter. Курс от компании Surf дает мне отличную основу, и я активно применяю полученные знания в своих проектах.
    Я постоянно стремлюсь к самосовершенствованию и готов взять на себя новые вызовы в разработке программного обеспечения. Я уверен, что с каждым проектом и новым опытом я буду становиться все более опытным и компетентным разработчиком.
                    """,
                textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
