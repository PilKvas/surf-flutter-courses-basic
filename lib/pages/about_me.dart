import 'package:flutter/material.dart';

class AboutMePage extends StatelessWidget {
  final String title;
  const AboutMePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      child: Placeholder(),
                    ),
                    Text('Артем Дарбинян'),
                  ],
                ),
                Text(
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 17.0),
                    """
    Привет, меня зовут Артем! Я начинающий Flutter разработчик, стремящийся достичь новых высот в этой увлекательной области программирования. В настоящее время я прохожу курс от компании Surf, и я в восторге от того, как много новых знаний и навыков я получаю на этом пути.
    Базовая часть курса уже почти позади меня, и я чувствую, как мои навыки и понимание Flutter постепенно растут. Однако, я не собираюсь останавливаться на достигнутом. Мир разработки приложений на Flutter так богат и динамичен, что всегда есть что-то новое для изучения и исследования.  Я увлечен возможностями, которые предлагает Flutter, и я хочу использовать их для создания качественных и инновационных мобильных приложений. 
    Я стремлюсь стать опытным и талантливым разработчиком, способным превратить свои идеи в реальность. """),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("Листай"), Icon(Icons.arrow_forward_ios_rounded)],
          )
        ],
      ),
    );
  }
}
