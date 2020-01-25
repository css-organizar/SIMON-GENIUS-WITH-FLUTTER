import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'app/shared/controllers/game_controller.dart';
import 'app/ui/home_page.dart';
import 'package:flutter/services.dart';

void main() {

  GetIt getIt = GetIt.I;
  getIt.registerSingleton<GameController>(GameController());

  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.landscapeLeft,
  //   DeviceOrientation.portraitUp
  // ]);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
  
}
