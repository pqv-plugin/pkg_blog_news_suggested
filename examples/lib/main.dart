import 'package:flutter/material.dart';
import 'package:pkg_blog_news_suggested/package.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //? Scaffold tem cor default de background
    //? Scaffold -> vai na aplicação e não no componente
    return Scaffold(
      body: BlogSuggestedNews(
        title: 'Notícias Sugeridas',
        maxNewsShow: 4,
        onDontShowMe: () {
          print('ON DONT SHOW ME');
        },
        data: [
          {
            'title': 'Chuva',
            'description': 'Chuva forte no brasil',
            'image': 'https://dummyimage.com/800x800/dee2e6/ccc',
            'link': 'link',
          },
          {
            'title': 'Sol',
            'description': 'Chuva forte no brasil',
            'image': 'https://dummyimage.com/800x800/dee2e6/ccc',
            'link': 'link',
          },
          {
            'title': 'Terra',
            'description': 'Chuva forte no brasil',
            'image': 'https://dummyimage.com/800x800/dee2e6/ccc',
            'link': 'link',
          },
          {
            'title': 'Água',
            'description':
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ',
            'image': 'https://dummyimage.com/800x800/dee2e6/ccc',
            'link': 'link',
          }
        ],
      ),
    );
  }
}
