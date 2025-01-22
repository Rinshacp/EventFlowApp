import 'package:flutter/material.dart';



class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Status'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _statusTile('Event 1', '2025-01-25', 'Completed', Colors.green),
            _statusTile('Event 2', '2025-02-10', 'Upcoming', Colors.blue),
            _statusTile('Event 3', '2025-03-05', 'Cancelled', Colors.red),
            _statusTile('Event 4', '2025-04-15', 'Postponed', Colors.orange),
            _statusTile('Event 5', '2025-05-20', 'Completed', Colors.green),
          ],
        ),
      ),
    );
  }

  Widget _statusTile(String eventName, String date, String status, Color statusColor) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 5,
      child: ListTile(
        title: Text(
          eventName,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Date: $date',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 5),
            Text(
              'Status: $status',
              style: TextStyle(fontSize: 16, color: statusColor),
            ),
          ],
        ),
        trailing: Icon(
          statusColor == Colors.green
              ? Icons.check_circle_outline
              : statusColor == Colors.red
                  ? Icons.error_outline
                  : statusColor == Colors.blue
                      ? Icons.schedule
                      : Icons.update,
          color: statusColor,
        ),
      ),
    );
  }
}
