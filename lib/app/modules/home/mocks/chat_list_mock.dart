import '../model/chat_item_model.dart';

class ChatListMoockup {
  static var chatList = [
    ChatItemModel("Thiago", "mensagem redebida", "27/04/2020"),
    ChatItemModel("Matheus", "mensagem redebida", "27/04/2020"),
    ChatItemModel("Gabriel", "mensagem redebida", "27/04/2020"),
    ChatItemModel("Jose", "mensagem redebida", "27/04/2020"),
    ChatItemModel("Pedro", "mensagem redebida", "27/04/2020"),
    ChatItemModel("Maria", "mensagem redebida", "27/04/2020"),
    ChatItemModel("Ana", "mensagem redebida", "27/04/2020"),
    ChatItemModel("Josefa", "mensagem redebida", "27/04/2020"),
  ];

  static ChatItemModel getChatItem(int index) {
    return chatList[index];
  }

  static var itemCount = chatList.length;
}
