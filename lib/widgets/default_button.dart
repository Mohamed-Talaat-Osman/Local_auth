import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({
    required this.text,
    required this.bgColor,
    required this.textColor,
    required this.onClicked,
  });
  final String text;
  final Color bgColor;
  final Color textColor;
  final VoidCallback onClicked;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onClicked,
        child: Container(
          width: 70.w,
          height: 7.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: bgColor,
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16.sp,
                color: textColor,
              ),
            ),
          ),
        ));
  }
}
