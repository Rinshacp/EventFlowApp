import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 cards per row
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            buildDashboardCard(
              context,
              icon: Icons.event,
              title: "Event",
              color: Colors.lightBlueAccent,
              onTap: () {
                // Add navigation or action
                print("Event tapped");
              },
            ),
            buildDashboardCard(
              context,
              icon: Icons.info,
              title: "Instruction",
              color: Colors.greenAccent,
              onTap: () {
                print("Instruction tapped");
              },
            ),
            buildDashboardCard(
              context,
              icon: Icons.check_circle,
              title: "Status",
              color: Colors.orangeAccent,
              onTap: () {
                print("Status tapped");
              },
            ),
            buildDashboardCard(
              context,
              icon: Icons.info_outline,
              title: "About",
              color: Colors.purpleAccent,
              onTap: () {
                print("About tapped");
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDashboardCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 48,
                color: color,
              ),
              SizedBox(height: 12),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
