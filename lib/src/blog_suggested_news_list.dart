import 'package:flutter/material.dart';
import 'package:pkg_blog_news_suggested/pkg/blog_news/blog_news_model.dart';
import 'package:pkg_blog_news_suggested/src/blog_suggested_news_item.dart';
import 'package:responsive_grid/responsive_grid.dart';

class BlogSuggestedNewsList extends StatelessWidget {
  final List<dynamic> data;

  /// Quantidade máxima de notícia que deverá ser mostrada
  final int maxNewsShow;

  const BlogSuggestedNewsList({required this.data, required this.maxNewsShow});

  Future<List<ResponsiveGridCol>> _future(List<dynamic> data) async {
    List<ResponsiveGridCol> result = [];
    int len = data.length;

    for (int i = 0; i < len; i++) {
      if (i < maxNewsShow) {
        BlogNewsModel blogNewsModel = BlogNewsModel()..data = data[i];
        result.add(ResponsiveGridCol(
          xs: 12,
          sm: maxNewsShow < 2 ? 12 : 6,
          lg: maxNewsShow < 4 ? 4 : 3,
          child: BlogSuggestedNewsItem(blogNewsModel),
        ));
      } else {
        break;
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _future(data),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ResponsiveGridRow(children: snapshot.data as List<ResponsiveGridCol>);
        } else {
          return Theme(
            data: Theme.of(context).copyWith(accentColor: Colors.yellow),
            child: CircularProgressIndicator(
              color: Colors.lightGreenAccent,
            ),
          );
        }
      },
    );
    // (child: ResponsiveGridRow(children: _buildItens()));
  }
}
