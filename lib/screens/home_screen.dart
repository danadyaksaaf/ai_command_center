import 'package:flutter/material.dart';
import 'package:health_stats_ui/app_properties/colors.dart';
import 'package:health_stats_ui/app_properties/fonts.dart';
import 'package:health_stats_ui/widgets/active_text.dart';
import 'package:health_stats_ui/widgets/cards.dart';
import 'package:health_stats_ui/widgets/circle_menu.dart';
import 'package:health_stats_ui/widgets/nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const Center(child: Text('Home')),
    const Center(child: Text('Automation')),
    const Center(child: Text('Agents')),
    const Center(child: Text('API')),
  ];

  final List<({IconData icon, String label})> _navItems = [
    (icon: Icons.home_rounded, label: 'Home'),
    (icon: Icons.auto_awesome, label: 'Automation'),
    (icon: Icons.support_agent, label: 'Agents'),
    (icon: Icons.api, label: 'API'),
  ];

  @override
  Widget build(BuildContext context) {
    final devicWidth = MediaQuery.of(context).size.width;
    final devicHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.defaultWhite,
      body: Container(
        padding: EdgeInsets.all(30),
        width: devicWidth,
        height: devicHeight,
        decoration: BoxDecoration(color: AppColors.defaultWhite),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Velix',
                    style: AppFonts.semiBold.copyWith(fontSize: 20),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.notifications_outlined),
                        ),
                      ),
                      SizedBox(width: 10),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: AppColors.defaultBlack,
                        backgroundImage: NetworkImage(
                          'https://static.vecteezy.com/system/resources/thumbnails/005/346/410/small/close-up-portrait-of-smiling-handsome-young-caucasian-man-face-looking-at-camera-on-isolated-light-gray-studio-background-photo.jpg',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 45),
              Text(
                'Good Morning, Kingston',
                style: AppFonts.regular.copyWith(fontSize: 20),
              ),
              Text(
                'AI Command Center',
                style: AppFonts.semiBold.copyWith(fontSize: 30),
              ),
              SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleCarousel(icon: Icons.auto_awesome),
                  CircleCarousel(icon: Icons.api),
                  CircleCarousel(icon: Icons.vpn_key_sharp),
                  CircleCarousel(icon: Icons.add),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ActiveText(title: 'Active Automations', number: '03'),

                  ActiveText(title: 'APIs connected', number: '08'),

                  ActiveText(title: 'VPS Instances', number: '02'),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Active Agents',
                    style: AppFonts.semiBold.copyWith(fontSize: 20),
                  ),
                  Text(
                    'View All',
                    style: AppFonts.regular.copyWith(
                      fontSize: 15,
                      color: AppColors.darkGrey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  CardGrid(
                    title: 'Load Reply Agent',
                    icon: Icons.auto_awesome,
                    subtitle: 'Auto Reply in 15 minutes',
                    status: 'Active for 2 hours',
                  ),
                  SizedBox(width: 10),
                  CardGrid(
                    title: 'Pipeline',
                    icon: Icons.api,
                    subtitle: 'Drafting and Scheduling',
                    status: 'Active for 5 hours',
                  ),
                  SizedBox(width: 10),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CardGrid(
                    title: 'Invoice',
                    icon: Icons.vpn_key,
                    subtitle: 'Standing Upcoming Event',
                    status: 'Active for 7 hours',
                  ),
                  SizedBox(width: 10),
                  CardGrid(
                    title: 'DotNotify',
                    icon: Icons.api,
                    subtitle: 'Drafting and Scheduling',
                    status: 'Active for 7 hours',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FloatingNavBar(
        currentIndex: _currentIndex,
        items: _navItems,
        onTap: (i) => setState(() => _currentIndex = i),
      ),
    );
  }
}
