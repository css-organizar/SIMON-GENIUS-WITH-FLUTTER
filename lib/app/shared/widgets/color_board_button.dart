import 'package:flutter/material.dart';
import 'package:genius/app/shared/theme/styles.dart';
import 'package:genius/app/shared/utils/uitls.dart';

class ColorBoardButton extends StatefulWidget {
  final int buttonValue;
  final AnimationController buttonAnimation;
  final String buttonText;
  final Function() buttonTap;

  const ColorBoardButton(
      {Key key,
      this.buttonValue,
      this.buttonText,
      this.buttonTap,
      this.buttonAnimation})
      : super(key: key);

  @override
  _ColorBoardButtonState createState() => _ColorBoardButtonState();
}

class _ColorBoardButtonState extends State<ColorBoardButton>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  Tween<double> opacityTween;

  @override
  void initState() {
    super.initState();
    _animation =
        Tween<double>(begin: 1, end: 0).animate(widget.buttonAnimation);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) widget.buttonAnimation.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
          border: BorderDirectional(
              start: (widget.buttonValue == 2 || widget.buttonValue == 3)
                  ? BorderSide(width: GeniusStyles.colorBoardBorderSide)
                  : BorderSide.none,
              end: (widget.buttonValue == 1 || widget.buttonValue == 4)
                  ? BorderSide(width: GeniusStyles.colorBoardBorderSide)
                  : BorderSide.none,
              top: (widget.buttonValue == 3 || widget.buttonValue == 4)
                  ? BorderSide(width: GeniusStyles.colorBoardBorderSide)
                  : BorderSide.none,
              bottom: (widget.buttonValue == 1 || widget.buttonValue == 2)
                  ? BorderSide(width: GeniusStyles.colorBoardBorderSide)
                  : BorderSide.none)),
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Opacity(
            opacity: _animation.value,
            child: Scaffold(
              backgroundColor: identificaCor(value: widget.buttonValue),
              body: InkWell(
                onTap: widget.buttonTap,
                hoverColor: identificaCor(value: widget.buttonValue),
                highlightColor: identificaCor(value: widget.buttonValue),
                focusColor: identificaCor(value: widget.buttonValue),
                splashColor:
                    identificaCor(value: widget.buttonValue),
              ),
            ),
          );
        },
      ),
    );
  }
}
