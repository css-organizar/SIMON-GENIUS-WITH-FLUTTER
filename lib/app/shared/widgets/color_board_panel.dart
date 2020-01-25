import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:genius/app/shared/controllers/game_controller.dart';
import 'package:get_it/get_it.dart';

class ColorBoardPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<GameController>();

    return Center(
      child: ClipOval(
        child: Container(
          color: Colors.black,
          padding: EdgeInsets.all(15),
          child: ClipOval(
            child: Container(
              height: 100,
              width: 100,
              padding: EdgeInsets.all(0),
              color: Colors.grey[850],
              child: Observer(
                builder: (BuildContext context) {
                  return (controller.isStarted)
                      ? (controller.sucesso)
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 80,
                                )
                              ],
                            )
                          : Center(
                            child: Text(
                                controller.genius.timer.toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 80,
                                    fontFamily: "lcdType1",
                                    color: Colors.white),
                              ),
                          )
                      : (controller.asError)
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.error,
                                  color: Colors.red,
                                  size: 80,
                                ),
                              ],
                            )
                          : Icon(
                              Icons.refresh,
                              color: Colors.white,
                              size: 80,
                            );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
