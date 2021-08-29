import 'package:examples/app_theme.dart';
import 'package:examples/pages/example_translations.dart';
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
      translations: ExampleTranslations(), // your translations
      locale: Locale('en', 'US'), // translations will be displayed in that locale
      fallbackLocale: Locale('en', 'UK'), // specify the fallback locale in case an invalid locale is selected.
    );
  }
}
