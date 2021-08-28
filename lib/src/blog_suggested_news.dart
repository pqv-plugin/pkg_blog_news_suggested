import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pkg_blog_news_suggested/pkg/condition/condition_builder.dart';
import 'package:pkg_blog_news_suggested/src/blog_suggested_news_list.dart';

class BlogSuggestedNews extends StatelessWidget {
  /// Título do grupo de notícias sugeridas
  final String title;

  /// Lista de notícias para ser mostradas
  final List<dynamic> data;

  /// Quantidade máxima de notícia que deverá ser mostrada
  final int maxNewsShow;

  /// Evento disparado quando usuário solicita ocultar o componente da visualização
  final VoidCallback? onDontShowMe;

  const BlogSuggestedNews({
    required this.title,
    required this.data,
    this.maxNewsShow = 4,
    this.onDontShowMe,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Get.theme.textTheme;
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Row(children: [
              Text(title, style: textTheme.headline6!.copyWith(fontSize: 15, fontWeight: FontWeight.w700)),
              Spacer(),
              ConditionBuilder(
                condition: onDontShowMe != null,
                child: () => TextButton(
                  onPressed: onDontShowMe,
                  child: Text('Dont show me againx'),
                  style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 10)),
                  /*style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(TextStyle(color: Colors.green)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  ),*/
                  //style: TextButton.styleFrom(primary: Colors.green),
                ),
              ),
            ]),
          ),
          BlogSuggestedNewsList(
            data: data,
            maxNewsShow: maxNewsShow,
          )
        ],
      ),
    );
  }
}
