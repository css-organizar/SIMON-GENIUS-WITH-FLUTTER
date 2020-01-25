import 'package:flutter/material.dart';

import 'background_panel.dart';

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.4,
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Expanded(child: BackgroundPanel(position: 1)),
                  Expanded(child: BackgroundPanel(position: 2)),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Expanded(child: BackgroundPanel(position: 4)),
                  Expanded(child: BackgroundPanel(position: 3)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
