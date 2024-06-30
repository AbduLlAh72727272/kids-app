import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  // final Color backgroundColor;
  final Color textColor;
  final double textSize;
  // final double borderRadius;
  // final double padding;

  const CustomTextButton({super.key, 

    required this.text,
    required this.onPressed,
    // this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    this.textSize = 14,
    // this.borderRadius = 8.0,
    // this.padding = 16.0,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      // style: ButtonStyle(
      //   backgroundColor: WidgetStateProperty.all<Color>(backgroundColor),
      //   shape: WidgetStateProperty.all<OutlinedBorder>(
      //     RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(borderRadius),
      //     ),
      //   ),
      // ),
      child: Text(
        text,
        style: TextStyle(color: textColor,fontSize: textSize,),
      ),
    );
  }
}
