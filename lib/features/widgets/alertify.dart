library alertify;

import 'package:allemant_peritos/configs/animation_transition.dart';
import 'package:allemant_peritos/configs/constants_alertify.dart';
import 'package:flutter/material.dart';

class Alertify {
  final BuildContext context;
  final bool isDismissible;
  final AlertifyType alertType;
  final String content;
  final String title;
  final String buttonText;
  final AnimationType animationType;
  final Color? barrierColor;
  final Function? onDismiss;

  Alertify({
    required this.context,
    required this.isDismissible,
    required this.alertType,
    required this.content,
    required this.title,
    required this.buttonText,
    this.animationType = AnimationType.outToIn,
    this.barrierColor,
    this.onDismiss,
  });

  void show() async {
    await showGeneralDialog(
        barrierDismissible: isDismissible,
        context: context,
        pageBuilder: (BuildContext buildContext, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return _buildDialog();
        },
        barrierLabel:
            MaterialLocalizations.of(context).modalBarrierDismissLabel,
        barrierColor:
            barrierColor == null ? Colors.grey.withOpacity(0.2) : barrierColor!,
        transitionDuration: const Duration(milliseconds: 250),
        transitionBuilder: (
          BuildContext context,
          Animation<double> animation,
          Animation<double> secondaryAnimation,
          Widget child,
        ) =>
            _buildAnimation(animation, secondaryAnimation, child));
    if (onDismiss != null) onDismiss!();
  }

  Widget _buildDialog() {
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      insetAnimationCurve: Curves.easeInOutCubic,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 8, right: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                _buildIcon(),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Muli',
                      fontSize: 22,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  content,
                  style: const TextStyle(fontSize: 16, fontFamily: 'Muli'),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          _buildButton()
        ],
      ),
    );
  }

  Widget _buildIcon() {
    Widget icon =
        const Icon(Icons.check_circle_outline, size: 72, color: Colors.green);

    switch (alertType) {
      case AlertifyType.success:
        icon = const Icon(Icons.check_circle_outline,
            size: 72, color: Colors.green);
        break;
      case AlertifyType.error:
        icon =
            const Icon(Icons.error_outline, size: 72, color: Colors.redAccent);
        break;
      case AlertifyType.info:
        icon = const Icon(Icons.info_outline, size: 72, color: Colors.blue);
        break;
      case AlertifyType.warning:
        icon = const Icon(Icons.warning, size: 72, color: Colors.orange);
        break;
      case AlertifyType.none:
        icon = Container();
        break;
      default:
        icon = const Icon(Icons.check_circle_outline,
            size: 72, color: Colors.green);
        break;
    }
    return icon;
  }

  Widget _buildButton() {
    Color buttonColor = Colors.green;
    switch (alertType) {
      case AlertifyType.success:
        buttonColor = Colors.green;
        break;
      case AlertifyType.error:
        buttonColor = Colors.red;
        break;
      case AlertifyType.info:
        buttonColor = Colors.blue;
        break;
      case AlertifyType.warning:
        buttonColor = Colors.orange;
        break;
      case AlertifyType.none:
        buttonColor = Colors.grey;
        break;
    }

    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Material(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              color: buttonColor,
              child: InkWell(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Center(
                      child: Text(
                    buttonText,
                    style: const TextStyle(
                        color: Colors.white, fontSize: 18, fontFamily: 'Muli'),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildAnimation(Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    dynamic anim;
    switch (animationType) {
      case AnimationType.leftToRight:
        anim =
            AnimationTransition.fromLeft(animation, secondaryAnimation, child);
        break;
      case AnimationType.rightToLeft:
        anim =
            AnimationTransition.fromRight(animation, secondaryAnimation, child);
        break;
      case AnimationType.topToBottom:
        anim =
            AnimationTransition.fromTop(animation, secondaryAnimation, child);
        break;
      case AnimationType.bottomToTop:
        anim = AnimationTransition.fromBottom(
            animation, secondaryAnimation, child);
        break;
      case AnimationType.inToOut:
        anim = AnimationTransition.grow(animation, secondaryAnimation, child);
        break;
      case AnimationType.outToIn:
        anim = AnimationTransition.shrink(animation, secondaryAnimation, child);
        break;
      default:
        AnimationTransition.grow(animation, secondaryAnimation, child);
        break;
    }
    return anim;
  }
}
