import 'package:flutter/material.dart';
import 'package:pkg_blog_news_suggested/package.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlogSuggestedNews(
        title: 'Notícias sugeridas para você',
        maxNewsShow: 4,
        onDontShowMe: () {
          print('ON DONT SHOW ME');
        },
        data: [
          {
            'title': 'Título muito grande para a notícia',
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
          },
          {
            'title': 'Título muito grande para a notícia',
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
