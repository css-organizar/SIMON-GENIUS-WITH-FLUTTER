import 'package:flutter/material.dart';
import 'package:genius/app/shared/theme/styles.dart';

Color identificaCor({int value, int variacao = 0}) {
  switch (value) {
    case 1:
      return (variacao == 0) 
      ? GeniusStyles.colorBoardColorButton1 
      : GeniusStyles.colorBoardColorButton1[variacao];
      break;
    case 2:
      return (variacao == 0) 
      ? GeniusStyles.colorBoardColorButton2 
      : GeniusStyles.colorBoardColorButton2[variacao];
      break;
    case 3:
      return (variacao == 0) 
      ? GeniusStyles.colorBoardColorButton3 
      : GeniusStyles.colorBoardColorButton3[variacao];
      break;
    case 4:
      return (variacao == 0) 
      ? GeniusStyles.colorBoardColorButton4 
      : GeniusStyles.colorBoardColorButton4[variacao];
      break;
  }
}
