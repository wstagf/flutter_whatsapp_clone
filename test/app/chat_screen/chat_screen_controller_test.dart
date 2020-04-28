import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:flutter_whatsapp_clone/app/chat_screen/chat_screen_controller.dart';
import 'package:flutter_whatsapp_clone/app/app_module.dart';

void main() {
  initModule(AppModule());
  ChatScreenController chatscreen;

  setUp(() {
    chatscreen = AppModule.to.get<ChatScreenController>();
  });

  group('ChatScreenController Test', () {
    test("First Test", () {
      expect(chatscreen, isInstanceOf<ChatScreenController>());
    });

    test("Set Value", () {
      expect(chatscreen.value, equals(0));
      chatscreen.increment();
      expect(chatscreen.value, equals(1));
    });
  });
}
