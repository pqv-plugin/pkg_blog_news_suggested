import 'package:flutter/material.dart';
import 'package:pkg_blog_news_suggested/pkg/blog_news/blog_news_model.dart';
import 'package:pkg_blog_news_suggested/pkg/progress_circular.dart';
import 'package:pkg_blog_news_suggested/src/blog_suggested_news_item.dart';
import 'package:responsive_grid/responsive_grid.dart';

class BlogSuggestedNewsList extends StatelessWidget {
  /// Lista de notícias sugeridas
  final List<dynamic> data;

  /// Quantidade máxima de notícia que deverá ser mostrada
  final int maxNewsShow;

  /// Evento disparado quando usuário solicita visualizar notícias recentes do mesmo tipo
  final ValueChanged<BlogNewsModel> onLatestNewsShow;

  /// Evento disparado quando usuário solicita ocultar o componente da visualização
  final ValueChanged<BlogNewsModel> onNewsShow;

  const BlogSuggestedNewsList({
    required this.data,
    required this.maxNewsShow,
    required this.onLatestNewsShow,
    required this.onNewsShow,
  });

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
          child: BlogSuggestedNewsItem(blogNewsModel, onLatestNewsShow, onNewsShow),
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
          return ProgressCircular(
            width: 25,
            height: 25,
          );
        }
      },
    );
    // (child: ResponsiveGridRow(children: _buildItens()));
  }
}
