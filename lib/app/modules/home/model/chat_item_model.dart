import '../interface/chat_item_interface.dart';

class ChatItemModel implements IChatItem {
  String name;
  String mostRecentMessage;
  String messageDate;
  String avatarUrl;

  ChatItemModel(
      this.name, this.mostRecentMessage, this.messageDate, this.avatarUrl);
}
