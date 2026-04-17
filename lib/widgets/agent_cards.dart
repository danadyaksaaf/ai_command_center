import 'package:flutter/material.dart';
import 'package:health_stats_ui/app_properties/colors.dart';
import 'package:health_stats_ui/app_properties/fonts.dart';

class AgentCards extends StatefulWidget {
  final IconData icon;
  final Color statusColor;
  final Color statusTextColor;
  final String status;
  final String title;
  final String subtitle;

  const AgentCards({
    super.key,
    required this.icon,
    required this.status,
    required this.statusColor,
    required this.statusTextColor,
    required this.title,
    required this.subtitle,
  });

  @override
  State<AgentCards> createState() => _AgentCardsState();
}

class _AgentCardsState extends State<AgentCards> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(80),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Icon(widget.icon),
                ),
                Container(
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: widget.statusColor,
                  ),
                  child: Center(
                    child: Text(
                      widget.status,
                      style: AppFonts.regular.copyWith(
                        color: widget.statusTextColor,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              widget.title,
              style: AppFonts.regular.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              widget.subtitle,
              style: AppFonts.regular.copyWith(
                fontSize: 12,
                color: AppColors.defaultBlack.withAlpha(60),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.defaultBlack,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Install',
                  style: AppFonts.regular.copyWith(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
