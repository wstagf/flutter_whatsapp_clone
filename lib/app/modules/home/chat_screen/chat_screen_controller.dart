import 'package:mobx/mobx.dart';

part 'chat_screen_controller.g.dart';

class ChatScreenController = _ChatScreenBase with _$ChatScreenController;

abstract class _ChatScreenBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
