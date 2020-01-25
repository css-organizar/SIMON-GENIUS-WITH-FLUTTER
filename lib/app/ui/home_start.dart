import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:genius/app/shared/controllers/game_controller.dart';
import 'package:genius/app/shared/widgets/game_logo.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';

class HomeStart extends StatefulWidget {
  final PageController pageController;

  const HomeStart({Key key, this.pageController}) : super(key: key);

  @override
  _HomeStartState createState() => _HomeStartState();
}

class _HomeStartState extends State<HomeStart> {
  final controller = GetIt.I.get<GameController>();

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> valor = {"a": "1", "b": "2"};

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
                child: GameLogo(
                    titulo: "COLORBOX", subTitulo: "Exercite sua mente!")),
            Divider(
              height: 20,
              color: Colors.transparent,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.green[800],
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    widget.pageController.jumpToPage(1);
                  },
                  child: Icon(
                    Icons.play_circle_filled,
                    color: Colors.green[600],
                    size: 100,
                  ),
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Colors.transparent,
          elevation: 5,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(FontAwesomeIcons.thumbsUp,
                  size: 50, color: Colors.white),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
              icon: new Icon(FontAwesomeIcons.chartBar,
                  size: 50, color: Colors.white),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.questionCircle,
                    size: 50, color: Colors.white),
                title: Text(''))
          ],
        ));
  }

}
