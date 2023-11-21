
import 'package:flutter/material.dart';
import '../core/config/theme/color.dart';

class AppIndecator extends StatelessWidget {
  final double? value;
  const AppIndecator({super.key, this.value});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      color: kPrimaryColor,
      value: value,
    );
  }
}
