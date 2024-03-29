import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChatScreenWidget extends StatefulWidget {
  final String name;
  final String imgurl;

  const ChatScreenWidget(this.name, this.imgurl);

  @override
  _ChatScreenWidgetState createState() => _ChatScreenWidgetState();
}

class _ChatScreenWidgetState extends State<ChatScreenWidget> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        titleSpacing: -15.0,
        title: new Row(
          children: <Widget>[
            new FlatButton.icon(
                icon: new CircleAvatar(
                    backgroundImage: new NetworkImage(widget.imgurl)),
                label: new Text(
                  widget.name,
                  style: new TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                onPressed: () => {}),
            //  new Text(widget.name),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.videocam),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
          new Icon(Icons.call),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
          new Icon(Icons.more_vert)
        ],
      ),
      body: new Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
                image: new NetworkImage(
                    "https://i.pinimg.com/originals/8f/ba/cb/8fbacbd464e996966eb9d4a6b7a9c21e.jpg"),
                fit: BoxFit.fitWidth)),
        child: new Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    new Container(
                      color: Colors.red,
                      alignment: Alignment.centerRight,
                      width: 150,
                      child: _image == null
                          ? Text('No image selected.')
                          : Image.file(_image),
                    ),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                    Text('asdasd'),
                  ],
                ),
              ),
            )),
            new Row(children: <Widget>[
              new Flexible(
                  child: new Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
                child: new Theme(
                  data: Theme.of(context).copyWith(primaryColor: Colors.white),
                  child: new TextField(
                    decoration: new InputDecoration(
                      prefixIcon:
                          new Icon(Icons.insert_emoticon, color: Colors.grey),
                      hintText: "Type a message",
                      suffixIcon: new Icon(
                        Icons.camera_alt,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(30.0)),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              )),
              new Container(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: new IconButton(
                    icon: new Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      getImage();
                    }),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ])
          ],
        ),
      ),
    ); //modified
  }
}
