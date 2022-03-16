import 'package:flutter/material.dart';
import 'colors.dart';

// ignore: use_key_in_widget_constructors
class RoundIconButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RoundIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      child: Icon(icon),
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: AppColors.roundIconButtonColor,
    );
  }
}
