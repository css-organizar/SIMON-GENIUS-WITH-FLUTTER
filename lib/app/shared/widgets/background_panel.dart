import 'package:flutter/material.dart';
import 'package:genius/app/shared/utils/uitls.dart';

class BackgroundPanel extends StatelessWidget {
  final int position;

  const BackgroundPanel({Key key, this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
            //color: identificaCor(position),
            gradient: LinearGradient(
              // Where the linear gradient begins and ends
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              // Add one stop for each color. Stops should increase from 0 to 1
              stops: [0.1, 0.5, 0.7, 0.9],
              colors: [
                // Colors are easy thanks to Flutter's Colors class.
                identificaCor(value: position, variacao: 800),
                identificaCor(value: position, variacao: 700),
                identificaCor(value: position, variacao: 100),
                identificaCor(value: position, variacao: 400),
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: (position == 1) ? Radius.circular(30) : Radius.zero,
              topRight: (position == 2) ? Radius.circular(30) : Radius.zero,
              bottomLeft: (position == 4) ? Radius.circular(30) : Radius.zero,
              bottomRight: (position == 3) ? Radius.circular(30) : Radius.zero,
            )),
      ),
    );
  }
}
