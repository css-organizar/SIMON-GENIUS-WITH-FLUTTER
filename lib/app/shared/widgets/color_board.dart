import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:genius/app/shared/controllers/game_controller.dart';
import 'package:genius/app/shared/utils/audioPlayer.dart';
import 'package:get_it/get_it.dart';

import 'color_board_button.dart';
import 'color_board_panel.dart';

class ColorBoard extends StatelessWidget {

  final AnimationController buttonAnimation1;
  final AnimationController buttonAnimation2;
  final AnimationController buttonAnimation3;
  final AnimationController buttonAnimation4;

  const ColorBoard(
      {Key key,
      this.buttonAnimation1,
      this.buttonAnimation2,
      this.buttonAnimation3,
      this.buttonAnimation4})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I.get<GameController>();

    return Stack(
      children: <Widget>[
        Container(
          child: Column(
            children: <Widget>[
              buildRowTop(controller),
              buildRowBotton(controller)
            ],
          ),
        ),
        Observer(
          builder: (BuildContext context) {
            return ColorBoardPanel();
          },
        )
      ],
    );
  }

  Flexible buildRowTop(GameController controller) {
    return Flexible(
      flex: 2,
      child: Row(
        children: <Widget>[
          Observer(
            builder: (BuildContext context) {
              return Flexible(
                flex: 2,
                child: ColorBoardButton(
                  buttonValue: 1,
                  buttonAnimation: buttonAnimation1,
                  buttonTap:
                      (controller.isStarted && controller.isLoading == false)
                          ? () {
                              geniusPlaySound(1);
                              buttonAnimation1.forward();
                              controller.click(1);
                            }
                          : null,
                ),
              );
            },
          ),
          Observer(
            builder: (BuildContext context) {
              return Flexible(
                flex: 2,
                child: ColorBoardButton(
                  buttonValue: 2,
                  buttonAnimation: buttonAnimation2,
                  buttonTap:
                      (controller.isStarted && controller.isLoading == false)
                          ? () {
                              geniusPlaySound(2);
                              buttonAnimation2.forward();
                              controller.click(2);
                            }
                          : null,
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Flexible buildRowBotton(GameController controller) {
    return Flexible(
      flex: 2,
      child: Row(
        children: <Widget>[
          Observer(
            builder: (BuildContext context) {
              return Flexible(
                flex: 2,
                child: ColorBoardButton(
                  buttonValue: 4,
                  buttonAnimation: buttonAnimation4,
                  buttonTap:
                      (controller.isStarted && controller.isLoading == false)
                          ? () {
                              geniusPlaySound(4);
                              buttonAnimation4.forward();
                              controller.click(4);
                            }
                          : null,
                ),
              );
            },
          ),
          Observer(
            builder: (BuildContext context) {
              return Flexible(
                flex: 2,
                child: ColorBoardButton(
                  buttonValue: 3,
                  buttonAnimation: buttonAnimation3,
                  buttonTap:
                      (controller.isStarted && controller.isLoading == false)
                          ? () {
                              geniusPlaySound(3);
                              buttonAnimation3.forward();
                              controller.click(3);
                            }
                          : null,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
