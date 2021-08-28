import 'package:examples/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'pages/example_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => ExamplePage()),
      ],
      theme: appThemeData,
    );
  }
}
