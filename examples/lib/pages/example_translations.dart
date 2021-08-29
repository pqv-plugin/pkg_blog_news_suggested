import 'package:get/get.dart';

class ExampleTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'DONT_SHOW_ME_AGAIN': 'Dont show me again',
          'SEE_THE_LATEST': 'See the latest',
          'SUGGESTED_NEWS_FOR_YOU': 'Suggested news for you',
        },
        'pt_BR': {
          'DONT_SHOW_ME_AGAIN': 'Não me mostre novamente',
          'SEE_THE_LATEST': 'Veja as mais recentes',
          'SUGGESTED_NEWS_FOR_YOU': 'Notícias sugeridas para você',
        }
      };
}
