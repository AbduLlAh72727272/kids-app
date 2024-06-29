import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kidslearning/app/resources/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40.h,
        decoration: BoxDecoration(
          color:primaycolor, // Adjust the color as needed
          borderRadius:
              BorderRadius.circular(30.0), // Adjust the radius as needed
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0, // Adjust the font size as needed
              fontWeight: FontWeight.bold, // Adjust the font weight as needed
            ),
          ),
        ),
      ),
    );
  }
}
