import 'package:flutter/material.dart';
import 'package:health_stats_ui/app_properties/colors.dart';
import 'package:health_stats_ui/app_properties/fonts.dart';

class CardGrid extends StatelessWidget {
  final String title;
  final String subtitle;
  final String status;
  final IconData icon;

  const CardGrid({
    super.key,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        width: 180,
        height: 150,
        decoration: BoxDecoration(
          color: Color(0xffeceeea),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: AppFonts.semiBold.copyWith(fontSize: 14)),
                Icon(icon),
              ],
            ),
            SizedBox(height: 20),
            Text(subtitle, style: AppFonts.regular.copyWith(fontSize: 15)),
            SizedBox(height: 10),
            Text(
              status,
              style: AppFonts.regular.copyWith(
                fontSize: 15,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
