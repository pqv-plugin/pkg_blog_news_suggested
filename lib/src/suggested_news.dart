import 'package:flutter/material.dart';
import 'package:pkg_blog_news_suggested/src/suggested_news_list.dart';

class SuggestedNews extends StatelessWidget {
  final String title;
  final List<dynamic> data;

  const SuggestedNews({required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(children: [
            Text(title),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text('Dont show me again'),
            ),
          ]),
          SuggestedNewsList(data: data,)
        ],
      ),
    );
  }
}
