import 'package:flutter/material.dart';
import 'package:health_stats_ui/app_properties/fonts.dart';

class ActiveText extends StatelessWidget {
  final String title;
  final String number;

  const ActiveText({super.key, required this.title, required this.number});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppFonts.regular.copyWith(fontSize: 12)),
        SizedBox(height: 5),
        Text(number, style: AppFonts.semiBold.copyWith(fontSize: 25)),
      ],
    );
  }
}
