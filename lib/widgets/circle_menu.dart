import 'package:flutter/material.dart';

class CircleCarousel extends StatelessWidget {
  final IconData icon;

  const CircleCarousel({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12).copyWith(top: 0, bottom: 0),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xffeceeea),
      ),
      child: IconButton(onPressed: () {}, icon: Icon(icon)),
    );
  }
}
