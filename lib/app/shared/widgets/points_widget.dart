import 'package:flutter/material.dart';
import 'package:genius/app/shared/theme/styles.dart';

class PointsWidget extends StatelessWidget {
  final String value;
  final String label;

  const PointsWidget({
    Key key,
    @required this.value,
    @required this.label,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        IgnorePointer(
          child: TextField(
            readOnly: true,
            textAlign: TextAlign.center,
            controller: TextEditingController(text: " "),
            decoration: InputDecoration(
              labelText: label,
              alignLabelWithHint: true,
              enabled: true,
              border: OutlineInputBorder(),
              labelStyle: TextStyle(
                color: Colors.white,
                fontFamily: GeniusStyles.pointsEditLabelFontFamily,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: FittedBox(
              child: Text(
                value,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "lcdType1",
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
