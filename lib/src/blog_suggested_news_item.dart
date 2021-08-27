import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pkg_blog_news_suggested/pkg/blog_news/blog_news_model.dart';
import 'package:pkg_blog_news_suggested/pkg/url_link.dart';
import 'package:url_launcher/url_launcher.dart' as Launcher;

class BlogSuggestedNewsItem extends StatelessWidget {
  final BlogNewsModel model;

  BlogSuggestedNewsItem(this.model);

  //========================================
  // isHover
  //========================================
  final Rx<bool> _isHover = false.obs;

  set isHover(bool value) => _isHover.value = value;

  bool get isHover => _isHover.value;

  final List<BoxShadow> boxShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      spreadRadius: 0,
      blurRadius: 4,
      offset: Offset(0, 4),
    ),
  ];
  final List<BoxShadow> boxShadowReset = [];

  void _launch(String url) async {
    if (await Launcher.canLaunch(url)) {
      await Launcher.launch(
        url,
        forceWebView: true,
      );
    }
  }

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
  InkWell layoutA(BoxConstraints constrains) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (bool value) => isHover = value,
      onTap: () {
        _launch('https://medium.com/@mx_tino/flutter-themes-9cebc0fecd1d');
      },
      child: Obx(
        () => Container(
          margin: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            boxShadow: isHover ? boxShadow : boxShadowReset,
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
        ),
      ),
    );
  }

  InkWell layoutB(BoxConstraints constrains) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (bool value) => isHover = value,
      onTap: () {
        _launch('https://medium.com/@mx_tino/flutter-themes-9cebc0fecd1d');
      },
      child: Obx(
        () => Container(
          margin: EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.white,
            boxShadow: isHover ? boxShadow : boxShadowReset,
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
        ),
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
