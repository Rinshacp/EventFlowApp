import 'package:flutter/material.dart';

/// Main App

/// Screen to Display the Box with Arts, Sports, and Clubs
class BoxWithFieldsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _buildBox(),
        ),
      ),
    );
  }

  /// Method to build the box
  Widget _buildBox() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildField(Icons.palette, 'Arts', 'Explore creative arts programs.'),
            Divider(color: Colors.grey[300], thickness: 1),
            _buildField(Icons.sports_soccer, 'Sports', 'Join sports activities and events.'),
            Divider(color: Colors.grey[300], thickness: 1),
            _buildField(Icons.group, 'Clubs', 'Participate in student clubs and communities.'),
          ],
        ),
      ),
    );
  }

  /// Helper method to build each field inside the box
  Widget _buildField(IconData icon, String title, String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 28, color: Colors.blue),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 4),
              Text(
                description,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
