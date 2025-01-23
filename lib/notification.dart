import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      'title': 'Event Reminder',
      'message': 'Don\'t forget to attend the Tech Meetup tomorrow at 10 AM.',
      'time': '1 hour ago',
    },
    {
      'title': 'New Event Added',
      'message': 'A new event "Flutter Workshop" has been added to your calendar.',
      'time': '2 days ago',
    },
    {
      'title': 'Event Update',
      'message': 'The location for "Annual Music Fest" has been updated.',
      'time': '3 days ago',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: true,
      ),
      body: notifications.isEmpty
          ? Center(
              child: Text(
                'No notifications yet!',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          : ListView.builder(
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    leading: Icon(Icons.notifications, color: Colors.blue),
                    title: Text(notification['title']!),
                    subtitle: Text(notification['message']!),
                    trailing: Text(
                      notification['time']!,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ),
                );
              },
            ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: NotificationScreen(),
  ));
}
