import 'package:flutter/material.dart';
import 'const.dart';
import 'colors.dart';

// ignore: use_key_in_widget_constructors
class BottomButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const BottomButton({required this.onTap, required this.buttonTitle});

  final void Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: largeButtomTextStyle,
          ),
        ),
        color: AppColors.bottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 15.0),
        width: double.infinity,
        height: 70.0,
      ),
    );
  }
}
