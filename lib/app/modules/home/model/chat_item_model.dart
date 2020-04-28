import '../interface/chat_item_interface.dart';

class ChatItemModel implements IChatItem {
  String name;
  String mostRecentMessage;
  String messageDate;

  ChatItemModel(this.name, this.mostRecentMessage, this.messageDate);
}
