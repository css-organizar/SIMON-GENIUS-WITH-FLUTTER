import 'package:flutter/material.dart';
import 'package:genius/app/shared/theme/styles.dart';

class GameLogo extends StatelessWidget {
  final String titulo;
  final String subTitulo;

  const GameLogo({Key key, this.titulo, this.subTitulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FittedBox(
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              this.titulo,
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 1.5,
                fontSize: 100,
                color: Colors.blueGrey[100],
                fontFamily: GeniusStyles.logoFontFamily,
              ),
            ),
          ),
        ),
        FittedBox(
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              this.subTitulo,
              textAlign: TextAlign.center,
              style: TextStyle(
                letterSpacing: 1.5,
                fontSize: 40,
                color: Colors.blueGrey[100],
                fontFamily: GeniusStyles.logoFontFamily,
              ),
            ),
          ),
        )
      ],
    );
  }
}
