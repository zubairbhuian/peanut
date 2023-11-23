import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peanut/app/core/config/theme/color.dart';

class HomeCardRow extends StatelessWidget {
  final String title;
  final String value;
  final bool isDivider;
  const HomeCardRow(
      {super.key,
      required this.title,
      this.isDivider = true,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child: Text(
                title,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: kTextColor,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w400
      
                ),
              )),
              Flexible(
                  child: Text(value,
                      style: TextStyle(
                        fontSize: 12.sp, 
                        color: kTextColor,
                        fontWeight: FontWeight.w400
                        ))),
            ],
          ),
        ),
      ],
    );
  }
}
