import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:genius/app/shared/controllers/game_controller.dart';
import 'package:genius/app/shared/theme/styles.dart';
import 'package:genius/app/shared/widgets/background_widget.dart';
import 'package:genius/app/shared/widgets/genius_board.dart';
import 'package:genius/app/shared/widgets/points_widget.dart';
import 'package:get_it/get_it.dart';

class HomePortraitWidget extends StatelessWidget {
  final AnimationController buttonAnimation1;
  final AnimationController buttonAnimation2;
  final AnimationController buttonAnimation3;
  final AnimationController buttonAnimation4;

  const HomePortraitWidget(
      {Key key,
      this.buttonAnimation1,
      this.buttonAnimation2,
      this.buttonAnimation3,
      this.buttonAnimation4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<GameController>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Stack(
            children: <Widget>[
              BackgroundWidget(),
              Observer(
                builder: (BuildContext context) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              FittedBox(
                                child: Container(
                                  child: Text(
                                    "GENIUS",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      letterSpacing: 1.5,
                                      fontSize: 55,
                                      color: Colors.blueGrey[100],
                                      fontFamily: GeniusStyles.logoFontFamily,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 8,
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.transparent,
                          child: GeniusBoard(
                              buttonAnimation1: buttonAnimation1,
                              buttonAnimation2: buttonAnimation2,
                              buttonAnimation3: buttonAnimation3,
                              buttonAnimation4: buttonAnimation4),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 200,
                          height: 45,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.green[700],
                            child: Text(
                              "Jogar",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: (controller.isStarted)
                                ? null
                                : () {
                                    controller.gameStart(10);
                                  },
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          alignment: Alignment.topCenter,
                          color: Colors.transparent,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: PointsWidget(
                                    label: "Pontuação",
                                    value:
                                        controller.genius.contador.toString(),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: PointsWidget(
                                    label: "Record",
                                    value: controller.genius.record.toString(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
