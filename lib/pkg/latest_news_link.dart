import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

/// Envolve um elemento vinculável em torno do filho, abrindo o URL fornecido como uma string
///
class LatestNewsLink extends StatelessWidget {
  /// Texto de informação do link
  final String text;

  /// Evento disparado quando usuário clica no link
  final VoidCallback onClick;

  LatestNewsLink({required this.text, required this.onClick});

  //========================================
  // isHover
  //========================================
  final Rx<bool> _isHover = false.obs;

  set isHover(bool value) => _isHover.value = value;

  bool get isHover => _isHover.value;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onHover: (bool value) => isHover = value,
      onTap: () => onClick(),
      child: Obx(() => Text(text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isHover ? Colors.blueAccent : Color(0xFF326891),
          ))),
    );
  }
}
