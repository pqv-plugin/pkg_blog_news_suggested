import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart' as Launcher;

/// Envolve um elemento vinculável em torno do filho, abrindo o URL fornecido como uma string
///
/// Componente inspirado no https://pub.dev/packages/link
class UrlLink extends StatelessWidget {
  final String text;
  final String url;
  final VoidCallback? onError;

  /// Caso o URL não possa ser aberto (ou seja, o esquema não é compatível com o seu dispositivo), ele não iniciará o URL e chamará o retorno de chamada onError, se fornecido.
  /// Caso contrário, o URL será iniciado dentro do aplicativo
  UrlLink({required this.url, required this.text, this.onError});

  //========================================
  // isHover
  //========================================
  final Rx<bool> _isHover = false.obs;

  set isHover(bool value) => _isHover.value = value;

  bool get isHover => _isHover.value;

  void _launch(String url) async {
    if (await Launcher.canLaunch(url)) {
      await Launcher.launch(
        url,
        forceWebView: true,
      );
    } else {
      if (onError != null) {
        onError!();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onHover: (bool value) => isHover = value,
      onTap: () => _launch(url),
      child: Obx(() => Text(text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: isHover ? Colors.blueAccent : Color(0xFF326891),
          ))),
    );
  }
}
