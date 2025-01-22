import 'package:flutter/material.dart';



class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About App'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back to the previous page
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App Logo (Optional)
            Center(
              child: Icon(
                Icons.app_registration,
                size: 100,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),

            // App Name
            Text(
              'EventFlow',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            // App Description
            Text(
              'Description: This app provides amazing features that help users manage tasks efficiently. It is designed with a simple and user-friendly interface.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            // App Version
            Text(
              'Version: 1.0.0',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            // Developer Information
            Text(
              'Developer: Your Name',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            // Contact Information (Optional)
            Text(
              'Contact: eventflow @gmail.com',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),

            // Disclaimer or Additional Information (Optional)
            Text(
              'Disclaimer: This app is intended for educational purposes and is not affiliated with any organization.',
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
