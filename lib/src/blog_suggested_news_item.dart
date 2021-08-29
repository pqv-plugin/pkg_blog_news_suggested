import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pkg_blog_news_suggested/pkg/blog_news/blog_news_model.dart';
import 'package:pkg_blog_news_suggested/pkg/latest_news_link.dart';

class BlogSuggestedNewsItem extends StatelessWidget {
  /// Modelo de dados de notícias
  final BlogNewsModel model;

  /// Evento disparado quando usuário solicita visualizar notícias recentes do mesmo tipo
  final ValueChanged<BlogNewsModel> onLatestNewsShow;

  /// Evento disparado quando usuário solicita ocultar o componente da visualização
  final ValueChanged<BlogNewsModel> onNewsShow;

  BlogSuggestedNewsItem(this.model, this.onNewsShow, this.onLatestNewsShow);

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

  int doResize(double width, double maxWidth) {
    width = min(width, maxWidth);
    double size = width * (10 / maxWidth);
    double resize = size * 100 / 16;
    size = (resize * 100) / 100;
    return resize.round();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext coxtext, BoxConstraints constrains) {
        if (constrains.maxWidth > 270) {
          return layoutA(constrains, onNewsShow);
        } else {
          return layoutB(constrains, onNewsShow);
        }
      },
    );
  }

  //TODO:: Implementar Style
  //TODO:: Implementar Theme
  //TODO:: Implementar TransLate
  InkWell layoutA(BoxConstraints constrains, ValueChanged<BlogNewsModel> onNewsShow) {
    CardTheme theme = Get.theme.cardTheme;
    RoundedRectangleBorder shape = Get.theme.cardTheme.shape as RoundedRectangleBorder;

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (bool value) => isHover = value,
      onTap: () {
        onLatestNewsShow(model);
      },
      child: Obx(
        () => Container(
          margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
          decoration: BoxDecoration(
            border: Border.all(color: shape.side.color),
            color: theme.color,
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

  InkWell layoutB(BoxConstraints constrains, ValueChanged<BlogNewsModel> onNewsShow) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (bool value) => isHover = value,
      onTap: () {
        onLatestNewsShow(model);
      },
      child: Obx(
        () => Container(
          margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
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
    final TextTheme textTheme = Get.theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.group.toUpperCase(),
          style: textTheme.overline,
          maxLines: 1,
        ),
        SizedBox(height: 10),
        Text(
          model.title,
          maxLines: 1,
          style: textTheme.headline6!.copyWith(fontSize: 10),
        ),
        SizedBox(height: 3),
        SizedBox(
          height: 60,
          child: Text(
            model.description,
            maxLines: 3,
            style: TextStyle(fontSize: 16),
          ),
        ),
        SizedBox(height: 10),
        LatestNewsLink(
          text: 'SEE_THE_LATEST'.tr,
          onClick: () {
            onNewsShow(model);
          },
        )
      ],
    );
  }
}
