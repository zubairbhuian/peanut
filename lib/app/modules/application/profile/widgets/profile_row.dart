import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peanut/app/core/config/theme/color.dart';

class ProfileRow extends StatelessWidget {
  final String title;
  final String value;
  final bool isDivider;
  const ProfileRow(
      {super.key,
      required this.title,
      this.isDivider = true,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child: Text(
                title,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: kTextColorLight,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w400
      
                ),
              )),
              Flexible(
                  child: Text(value,
                      style: TextStyle(
                        fontSize: 16.sp, 
                        color: kTextColor,
                        fontWeight: FontWeight.w400
                        ))),
            ],
          ),
        ),
        if (isDivider)
          const Divider(
            color: kDisabledColor,
            thickness: .79,
          )
      ],
    );
  }
}
