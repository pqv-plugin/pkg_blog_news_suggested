import 'package:flutter/material.dart';
import 'package:pkg_blog_news_suggested/pkg/blog_news/blog_news_model.dart';

class BlogSuggestedNewsItem extends StatelessWidget {
  final BlogNewsModel model;

  const BlogSuggestedNewsItem(this.model);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (coxtext, constrains) {
        print('---------------------->>>>');
        print(constrains.maxWidth);
        if (constrains.maxWidth > 270) {
          return buildSM();
        } else {
          return buildMD();
        }
      },
    );
  }

  //TODO:: Implementar Stile
  //TODO:: Implementar Theme
  //TODO:: Separar componentes reutilizaveis (image/text/title)
  Container buildSM() {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.lightGreenAccent.withOpacity(0.1),
      ),
      padding: EdgeInsets.all(14),
      child: Column(
        children: [
          Container(
            height: 80,
            alignment: Alignment.topLeft,
            child: Image.network('${this.model.image}'),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                this.model.title.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(this.model.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14), textAlign: TextAlign.left),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              this.model.description,
              style: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Veja o mais recente',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container buildMD() {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        color: Colors.yellow.withOpacity(0.5),
      ),
      padding: EdgeInsets.all(14),
      child: Column(
        children: [
          Container(
            height: 80,
            alignment: Alignment.topLeft,
            child: Image.network('${this.model.image}'),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Text(
                this.model.title.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(this.model.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14), textAlign: TextAlign.left),
          ),
          SizedBox(
            height: 3,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              this.model.description,
              style: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Veja o mais recente',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
