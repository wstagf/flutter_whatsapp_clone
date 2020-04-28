import 'package:flutter/material.dart';
import '../home/model/chat_item_model.dart';
import '../home/model/chat_list_model.dart';
import '../home/mocks/chat_list_mock.dart';
import 'chat_screen/chat_screen_widget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Color whatsAppGreen = Color.fromRGBO(18, 140, 126, 1.0);
  Color whatsAppGreenLight = Color.fromRGBO(37, 211, 102, 1.0);

  TabController tabController;
  var fabIcon = Icons.message;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(vsync: this, length: 4)
      ..addListener(() {
        setState(() {
          switch (tabController.index) {
            case 0:
              break;
            case 1:
              fabIcon = Icons.message;
              break;
            case 2:
              fabIcon = Icons.camera_enhance;
              break;
            case 3:
              fabIcon = Icons.call;
              break;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(
          "WhatsApp",
          style: TextStyle(
              color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.w600),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.more_vert),
          ),
        ],
        backgroundColor: whatsAppGreen,
        bottom: TabBar(
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("CHATS"),
            ),
            Tab(
                child: Text(
              "STATUS",
            )),
            Tab(
                child: Text(
              "CALLS",
            )),
          ],
          indicatorColor: Colors.white,
          controller: tabController,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Icon(Icons.camera_alt),
          ListView.builder(
              itemCount: ChatListMoockup.itemCount,
              itemBuilder: (context, position) {
                ChatItemModel chatItem = ChatListMoockup.getChatItem(position);

                //itemBuilder: (context, l) => new Column(
                return new Column(
                  children: <Widget>[
                    new Divider(
                      height: 10.0,
                    ),
                    new ListTile(
                      leading: new CircleAvatar(
                        foregroundColor: Theme.of(context).accentColor,
                        backgroundColor: Colors.grey,
                        backgroundImage: new NetworkImage(chatItem.avatarUrl),
                      ),
                      title: new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          new Text(
                            chatItem.name,
                            style: new TextStyle(fontWeight: FontWeight.bold),
                          ),
                          new Text(
                            chatItem.messageDate,
                            style: new TextStyle(
                                color: Colors.grey, fontSize: 14.0),
                          ),
                        ],
                      ),
                      subtitle: new Container(
                        padding: const EdgeInsets.only(top: 5.0),
                        child: new Text(chatItem.mostRecentMessage,
                            style: new TextStyle(
                                color: Colors.grey, fontSize: 15.0)),
                      ),
                      onTap: () => Navigator.of(context)
                          .push(new MaterialPageRoute(builder: (context) {
                        return new ChatScreenWidget(
                            chatItem.name, chatItem.avatarUrl);
                      })),
                    )
                  ],
                );
              }),
          Icon(Icons.star),
          Icon(Icons.call),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(fabIcon),
        backgroundColor: whatsAppGreenLight,
      ),
    );
  }
}
