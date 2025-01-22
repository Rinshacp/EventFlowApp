import 'package:flutter/material.dart';

/// Model Class
class PageModel {
  final String event;
  final String instruction;
  final String notification;
  final String status;
  final String about;

  PageModel({
    required this.event,
    required this.instruction,
    required this.notification,
    required this.status,
    required this.about,
  });

  // Factory method to create a model from JSON
  factory PageModel.fromJson(Map<String, dynamic> json) {
    return PageModel(
      event: json['event'] ?? '',
      instruction: json['instruction'] ?? '',
      notification: json['notification'] ?? '',
      status: json['status'] ?? '',
      about: json['about'] ?? '',
    );
  }

  // Convert model to JSON
  Map<String, dynamic> toJson() {
    return {
      'event': event,
      'instruction': instruction,
      'notification': notification,
      'status': status,
      'about': about,
    };
  }
}

/// Main App


/// Screen to Display the PageModel Data with Icons
class PageModelScreen extends StatelessWidget {
  // Dummy data for the model
  final PageModel pageModel = PageModel(
    event: 'Flutter Workshop',
    instruction: 'Follow the workshop guidelines.',
    notification: 'Update your app to version 2.0.',
    status: 'Active',
    about: 'This workshop is about building apps with Flutter.',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Model with Icons'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display each field with an icon
            _buildField(Icons.event, 'Event', pageModel.event),
            _buildField(Icons.info, 'Instruction', pageModel.instruction),
            _buildField(Icons.notifications, 'Notification', pageModel.notification),
            _buildField(Icons.check_circle, 'Status', pageModel.status),
            _buildField(Icons.info_outline, 'About', pageModel.about),
          ],
        ),
      ),
    );
  }

  /// Helper widget to display a field with an icon
  Widget _buildField(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 24, color: Colors.blue),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
