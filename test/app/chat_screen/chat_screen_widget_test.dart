import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:flutter_whatsapp_clone/app/chat_screen/chat_screen_widget.dart';

main() {
  testWidgets('ChatScreenWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ChatScreenWidget()));
    final textFinder = find.text('ChatScreen');
    expect(textFinder, findsOneWidget);
  });
}
