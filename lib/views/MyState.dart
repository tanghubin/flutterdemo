
import 'package:flutter/material.dart';

class MySceen extends StatefulWidget {
    @override
    State<StatefulWidget> createState() {
        return MyState();
    }
}

class MyState extends State<MySceen> {
  TextEditingController controller = new TextEditingController();

  void setText(String value) {
    setState(() {
      controller.clear();
    });
  }

  void search() {
    setState(() {
      controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Row(
            children: <Widget>[
              new Icon(
                Icons.search,
                color: Colors.black,
              ),
              new SizedBox(
                child: new TextField(
                  controller: controller,
                  decoration: new InputDecoration(hintText: "输入文字..."),
                  onSubmitted: setText,
                ),
                width: 180.0,
                height: 45.0,
              ),
              new Icon(
                Icons.clear,
                color: Colors.black,
              ),
              new MaterialButton(
                child: new Text("搜索"),
                onPressed: search,
                height: 45.0,
              ),
            ],
          ),
        ),
        body: new Column(
          children: <Widget>[
            new ListTile(
              title: new Stack(
                children: <Widget>[
                  new Text("这是啥"),
                ],
              ),
              leading: new Text("leading"),//置顶
            ),
          ],
        )
    );
  }
}