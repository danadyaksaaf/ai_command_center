import 'package:flutter/material.dart';
import 'package:health_stats_ui/app_properties/colors.dart';
import 'package:health_stats_ui/app_properties/fonts.dart';
import 'package:health_stats_ui/widgets/agent_cards.dart';

class AgentScreen extends StatefulWidget {
  const AgentScreen({super.key});

  @override
  State<AgentScreen> createState() => _AgentScreenState();
}

class _AgentScreenState extends State<AgentScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final List<String> _items = [
      'All',
      'Marketing',
      'Productivity',
      'Support',
      'Finance',
    ];
    String _selected = 'All';

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: width,
        height: height,
        decoration: BoxDecoration(color: AppColors.defaultWhite),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Explore AI Agents',
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
            SizedBox(height: 40),
            Container(
              width: width,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xffeceeea),
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Search agents, automation, APIs, etc.',
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _items.map((item) {
                  final isActive = _selected == item;
                  return GestureDetector(
                    onTap: () => setState(() => _selected = item),
                    child: Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 7,
                      ),
                      decoration: BoxDecoration(
                        color: isActive ? Colors.black : Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: isActive ? Colors.black : Colors.grey.shade300,
                        ),
                      ),
                      child: Text(
                        item,
                        style: TextStyle(
                          color: isActive ? Colors.white : Colors.grey.shade600,
                          fontWeight: isActive
                              ? FontWeight.w600
                              : FontWeight.normal,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AgentCards(
                        icon: Icons.message,
                        status: 'Regular',
                        statusColor: Colors.lightGreen,
                        statusTextColor: Colors.white,
                        title: 'Load Reply Agent',
                        subtitle: 'Auto Reply in 15 minutes',
                      ),
                      SizedBox(width: 10),
                      AgentCards(
                        icon: Icons.people,
                        status: 'Premium',
                        statusColor: Colors.blue,
                        statusTextColor: Colors.white,
                        title: 'Social Agent',
                        subtitle: 'Schedule Contents',
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AgentCards(
                        icon: Icons.message,
                        status: 'Regular',
                        statusColor: Colors.lightGreen,
                        statusTextColor: Colors.white,
                        title: 'Load Reply Agent',
                        subtitle: 'Auto Reply in 15 minutes',
                      ),
                      SizedBox(width: 10),
                      AgentCards(
                        icon: Icons.people,
                        status: 'Premium',
                        statusColor: Colors.blue,
                        statusTextColor: Colors.white,
                        title: 'Social Agent',
                        subtitle: 'Schedule Contents',
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AgentCards(
                        icon: Icons.message,
                        status: 'Regular',
                        statusColor: Colors.lightGreen,
                        statusTextColor: Colors.white,
                        title: 'Load Reply Agent',
                        subtitle: 'Auto Reply in 15 minutes',
                      ),
                      SizedBox(width: 10),
                      AgentCards(
                        icon: Icons.people,
                        status: 'Premium',
                        statusColor: Colors.blue,
                        statusTextColor: Colors.white,
                        title: 'Social Agent',
                        subtitle: 'Schedule Contents',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
