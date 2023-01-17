import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {

  BottomButton({required this.title, required this.onTap});

  final String? title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        // padding: EdgeInsets.only(bottom: 20.0),
        color: kBottomContainerColor,
        height: kBottomContainerHeight,
        margin: EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(
            title!,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}