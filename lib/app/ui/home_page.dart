import 'package:flutter/material.dart';
import 'package:genius/app/shared/controllers/game_controller.dart';
import 'package:genius/app/shared/utils/audioPlayer.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

import 'home_landscape.dart';
import 'home_portrait.dart';

enum AudioPlayerState {
  STOPPED,
  PLAYING,
  PAUSED,
  COMPLETED,
}

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  
  final controller = GetIt.I.get<GameController>();

  AnimationController buttonAnimation1;
  AnimationController buttonAnimation2;
  AnimationController buttonAnimation3;
  AnimationController buttonAnimation4;

  @override
  void initState() {

    super.initState();

    buttonAnimation1 = AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    buttonAnimation2 = AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    buttonAnimation3 = AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    buttonAnimation4 = AnimationController(duration: Duration(milliseconds: 200), vsync: this);

    reaction((r) => controller.currentValues.length, (length) async {
      // Esperando 1 segundo antes de iniciar para não ficar estranho pro usuário
      await Future.delayed(const Duration(seconds: 1));
      playAnimations();
    });

    controller.genius.getRecord();
  }

  Future<void> animateButton(AnimationController buttonController) async {
    await buttonController.forward();
    await buttonController.reverse();
  }

  Future<void> playAnimations() async {
    for (var buttonPosition in controller.currentValues) {
      if (controller.isStarted) {
        switch (buttonPosition) {
          case 1:
            geniusPlaySound(1);          
            await animateButton(buttonAnimation1);
            break;
          case 2:
            geniusPlaySound(2);
            await animateButton(buttonAnimation2);
            break;
          case 3:
            geniusPlaySound(3);
            await animateButton(buttonAnimation3);
            break;
          case 4:
            geniusPlaySound(4);
            await animateButton(buttonAnimation4);
            break;
        }
      }
    }
    controller.setLoadingOff();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return (orientation == Orientation.portrait)
            ? HomePortraitWidget(
                buttonAnimation1: buttonAnimation1,
                buttonAnimation2: buttonAnimation2,
                buttonAnimation3: buttonAnimation3,
                buttonAnimation4: buttonAnimation4)
            : HomeLandscapetWidget(
                buttonAnimation1: buttonAnimation1,
                buttonAnimation2: buttonAnimation2,
                buttonAnimation3: buttonAnimation3,
                buttonAnimation4: buttonAnimation4);
      },
    );
  }
}
