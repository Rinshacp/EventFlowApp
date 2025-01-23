import 'package:flutter/material.dart';

void main() {
  runApp(ProfilePageApp());
}

class ProfilePageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/profile_picture.png'), // Replace with your image asset
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.blue,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ProfileField(label: 'Name', value: 'NAFIYA SHIRIN. C'),
              ProfileField(label: 'Date of Birth', value: '29-09-2004'),
              ProfileField(label: 'Gender', value: 'Female'),
              ProfileField(label: 'Department', value: 'O+'),
              ProfileField(label: 'Religion', value: 'Islam'),
              ProfileField(label: 'Address', value: 'Your Address Here'),
              ProfileField(label: 'Place', value: 'Your Place Here'),
              ProfileField(label: 'Email', value: 'example@email.com'),
              ProfileField(label: 'Phone Number', value: '+1234567890'),
              ProfileField(label: 'Username', value: 'username123'),
              ProfileField(label: 'Password', value: '********'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle edit action
                },
                child: Text('Edit Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileField extends StatelessWidget {
  final String label;
  final String value;

  ProfileField({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$label: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
