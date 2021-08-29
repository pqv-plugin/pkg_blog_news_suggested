import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pkg_blog_news_suggested/package.dart';
import 'package:pkg_blog_news_suggested/pkg/blog_news/blog_news_model.dart';

class ExamplePage extends StatelessWidget {
  Future<List<dynamic>> _future() async {
    await new Future.delayed(new Duration(seconds: 1), () {
      print("TIMED 5");
    });

    return [
      {
        'group': 'Moda',
        'title': 'Título muito grande para a notícia',
        'description': 'Chuva forte no brasil',
        'image': 'https://picsum.photos/id/237/200',
        'link': 'link',
      },
      {
        'group': 'Arte',
        'title': 'Sol',
        'description': 'Chuva forte no brasil',
        'image': 'https://picsum.photos/id/238/200',
        'link': 'link',
      },
      {
        'group': 'Tecnologia',
        'title': 'Terra',
        'description': 'Chuva forte no brasil',
        'image': 'https://picsum.photos/id/239/200',
        'link': 'link',
      },
      {
        'group': 'Livros',
        'title': 'Água',
        'description':
            'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ',
        'image': 'https://picsum.photos/id/235/200',
        'link': 'link',
      },
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlogSuggestedNews(
        title: 'Notícias sugeridas para você',
        maxNewsShow: 4,
        onDontShowMe: () {
          print('ON DONT SHOW ME');
        },
        onLatestNewsShow: (BlogNewsModel newsModel) {
          print('LATEST_NEWS-->>$newsModel');
        },
        onNewsShow: (BlogNewsModel newsModel) {
          print('NEWS-->>$newsModel');
        },
        future: _future(),
      ),
    );
  }
}
