import 'package:flutter/material.dart';

class Noticias extends StatelessWidget {
  final String? semana;
  final String? titulo;
  final String? descricao;
  final String? image;
  final Widget? textButton;
  const Noticias({
    Key? key,
    this.semana,
    this.titulo,
    this.descricao,
    this.image,
    this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            border: Border.all(color: Colors.grey),
            color: Colors.white),
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Align(
              child: Container(
                height: 70,
                alignment: Alignment.topLeft,
                child: Image.network('${this.image}'),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(
                  this.semana ?? '',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(this.titulo ?? '',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  textAlign: TextAlign.left),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                this.descricao ?? '',
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
      ),
    );
  }
}
