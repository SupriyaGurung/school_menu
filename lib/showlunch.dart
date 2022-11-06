import 'package:flutter/material.dart';
import 'lunchmenu.dart';

class ShowLunch extends StatefulWidget {
  final LunchMenu menu;

  const ShowLunch({
    Key? key,
    required this.menu,
  }) : super(key: key);

  @override
  ShowLunchState createState() {
    return ShowLunchState();
  }
}

class ShowLunchState extends State<ShowLunch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.menu.lunchDay),
        ),
        body: SafeArea(
            child: Column(children: <Widget>[
          Text(
            widget.menu.lunchDay,
            style: const TextStyle(fontSize: 40),
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: Image(
              image: AssetImage(widget.menu.lunchPic),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(2, 20, 2, 2),
              itemCount: widget.menu.lunch.length,
              itemBuilder: (BuildContext contex, int index) {
                final food = widget.menu.lunch[index];
                return Text(
                  food,
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                  selectionColor: const Color(0xFF42A5F5),
                );
              },
            ),
          ),
        ])));
  }
}
