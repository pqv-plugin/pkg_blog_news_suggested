import 'package:flutter/material.dart';
import 'package:pkg_blog_news_suggested/pkg/blog_news/blog_news_model.dart';
import 'package:pkg_blog_news_suggested/pkg/url_link.dart';

class BlogSuggestedNewsItem extends StatelessWidget {
  final BlogNewsModel model;

  const BlogSuggestedNewsItem(this.model);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext coxtext, BoxConstraints constrains) {
        if (constrains.maxWidth > 270) {
          return layoutA(constrains);
        } else {
          return layoutB(constrains);
        }
      },
    );
  }

  //TODO:: Implementar Style
  //TODO:: Implementar Theme
  //TODO:: Implementar TransLate
  //TODO:: Separar componentes reutilizaveis (image/text/title)
  Container layoutA(BoxConstraints constrains) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.lightGreenAccent.withOpacity(0.1),
      ),
      padding: EdgeInsets.all(14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            alignment: Alignment.topLeft,
            child: Image.network('${this.model.image}'),
          ),
          SizedBox(width: 15),
          Expanded(child: buildText())
        ],
      ),
    );
  }

  Container layoutB(BoxConstraints constrains) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.pink.withOpacity(0.5),
      ),
      padding: EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 80,
            alignment: Alignment.topLeft,
            child: Image.network('${this.model.image}'),
          ),
          SizedBox(height: 15),
          buildText()
        ],
      ),
    );
  }

  Column buildText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          this.model.title.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 10,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: 10),
        Text(
          this.model.title,
          maxLines: 1,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: 3),
        SizedBox(
          height: 60,
          child: Text(
            this.model.description,
            maxLines: 3,
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(height: 10),
        UrlLink(
          text: 'Veja o mais recente',
          url: 'https://docs.flutter.io/flutter/services/UrlLauncher-class.html',
        )
      ],
    );
  }
}
