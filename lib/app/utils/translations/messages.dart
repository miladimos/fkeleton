import 'package:get/get.dart';

class Messages extends Translations
{

  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello World',
      'logged_in': 'logged in as @name with email @email',
    },
    'de_DE': {
      'hello': 'Hallo Welt',
      'logged_in': 'iniciado sesión como @name con e-mail @email',
    }
  };

}

//
// Text('logged_in'.trParams({
// 'name': 'Jhon',
// 'email': 'jhon@example.com'
// }));

//
// var locale = Locale('en', 'US');
// Get.updateLocale(locale);