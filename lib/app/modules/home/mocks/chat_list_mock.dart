import '../model/chat_item_model.dart';

class ChatListMoockup {
  static var chatList = [
    ChatItemModel("Thiago", "mensagem redebida", "27/04/2020",
        "https://picsum.photos/200"),
    ChatItemModel("Matheus", "mensagem redebida", "27/04/2020",
        "https://picsum.photos/200"),
    ChatItemModel("Gabriel", "mensagem redebida", "27/04/2020",
        "https://picsum.photos/200"),
    ChatItemModel(
        "Jose", "mensagem redebida", "27/04/2020", "https://picsum.photos/200"),
    ChatItemModel("Pedro", "mensagem redebida", "27/04/2020",
        "https://picsum.photos/200"),
    ChatItemModel("Maria", "mensagem redebida", "27/04/2020",
        "https://picsum.photos/200"),
    ChatItemModel(
        "Ana", "mensagem redebida", "27/04/2020", "https://picsum.photos/200"),
    ChatItemModel("Josefa", "mensagem redebida", "27/04/2020",
        "https://picsum.photos/200"),
  ];

  static ChatItemModel getChatItem(int index) {
    return chatList[index];
  }

  static var itemCount = chatList.length;
}
